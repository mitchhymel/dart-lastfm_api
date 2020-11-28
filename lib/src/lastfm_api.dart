
import 'dart:convert';
import 'dart:core';

import 'package:lastfm/lastfm_api.dart';
import 'package:lastfm/src/clients/clients.dart';
import 'package:lastfm/src/enums/enums.dart';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'package:lastfm/src/lastfm_response.dart';
import 'package:lastfm/src/models/models.dart';
class LastFmApi {
  final String apiKey;
  final String sharedSecret;
  final String userAgent;
  final bool useJson;
  final LastFmLogger logger;
  String sessionKey;

  AlbumClient _album;
  AlbumClient get album => _album;

  ArtistClient _artist;
  ArtistClient get artist => _artist;

  AuthClient _auth;
  AuthClient get auth => _auth;

  ChartClient _chart;
  ChartClient get chart => _chart;

  GeoClient _geo;
  GeoClient get geo => _geo;

  LibraryClient _library;
  LibraryClient get library => _library;

  TagClient _tag;
  TagClient get tag => _tag;

  TrackClient _track;
  TrackClient get track => _track;

  UserClient _user;
  UserClient get user => _user;

  static const String _formatStr = 'format';
  static const String _jsonStr = 'json';

  static final String ROOT_URL = 'https://ws.audioscrobbler.com/2.0/';
  static final String AUTHORITY = 'ws.audioscrobbler.com';
  static final String PATH = '/2.0';

  LastFmApi(this.apiKey, this.sharedSecret, {
    this.userAgent, this.useJson=true, this.logger, this.sessionKey
  }) {

    _album = new AlbumClient(makeRequest);
    _artist = new ArtistClient(makeRequest);
    _auth = new AuthClient(makeRequest);
    _chart = new ChartClient(makeRequest);
    _geo = new GeoClient(makeRequest);
    _library = new LibraryClient(makeRequest);
    _tag = new TagClient(makeRequest);
    _track = new TrackClient(makeRequest);
    _user = new UserClient(makeRequest);

  }

  Future<LastFmResponse> makeRequest(Map<String,String> params, 
    bool sign, bool authRequired, bool isGet) async {
    
    params.putIfAbsent('api_key', () => apiKey);
    if (isGet) {
      params.putIfAbsent(_formatStr, () => _jsonStr);
    }
    
    if (authRequired) {
      if (sessionKey == null) {
        throw new Exception('Tried to make an authed call without being authed');
      }
      params.putIfAbsent('sk', () => sessionKey);
    }

    var uri = new Uri.https(AUTHORITY, PATH, isGet ? params : null);

    var headers = {
      'Accept': 'application/json'
    };

    if (userAgent != null) {
      // on flutter web, we are not allowed to set user agent, and if we try to
      // the logs will be flooed with error messages indicating such.
      // Making userAgent optional here with the assumption that if caller
      // is using this on web, then they won't pass in a userAgent
      // Otherwise for other platforms, its good to identify your requests
      headers.putIfAbsent('User-Agent', () => userAgent);
    }

    var body = _getParamsAsBody(params, sign: sign, authRequired: authRequired);

    if (this.logger != null) {
      logger.logRequest(uri.toString(), headers, isGet ? '' : body);
    }

    var response = isGet ?
      await get(uri, headers: headers) :
      await post(uri, headers: headers, body: body);

    var data = json.decode(response.body);
    if (logger != null) {
      logger.logRawResponse(data);
    }

    LastFmResponse result;
    LastFmError error = LastFmError.fromMap(data);
    if (response.statusCode == 200) {
      if (error == null || error.message == null) {
        result = new LastFmResponse(
          error: null,
          status: response.statusCode,
          data: LastFmResponseData.fromJson(data)
        );
      }
      else {
        // sometimes we can get 200, but still receive an error
        // from lastfm
        // in which case we want data to be null and error to still be the error
        // from above
        result = new LastFmResponse(
          error: error,
          status: response.statusCode,
          data: null
        );
      }
    }
    else {
      result = new LastFmResponse(
        error: error,
        status: response.statusCode,
        data: null
      );
    }

    if (logger != null) {
      logger.logResponse(result);
    }

    return result;
  }

  void logout() {
    sessionKey = null;
  }

  Future<UserSession> loginWithUserNamePassword(String userName, String password) async {
    var res = await auth.getMobileSession(userName, password);
    if (!res.isSuccess()) {
      return null;
    }

    this.sessionKey = res.data.session.key;
    return res.data.session;
  }

  void loginWithSessionKey(String sessionKey) {
    this.sessionKey = sessionKey;
  }

  String getAuthUriWithCallbackUri(String callbackUri) {
    return 'http://www.last.fm/api/auth?api_key=$apiKey&cb=$callbackUri';
  }

  Future<UserSession> loginFromWebToken(String token) async {
    var res = await auth.getSession(token);
    if (!res.isSuccess()) {
      return null;
    }

    this.sessionKey = res.data.session.key;
    return res.data.session;
  }

  String _getSignature(Map<String, String> params) {
    var keysInAlphabeticalOrder = params.keys.toList();
    keysInAlphabeticalOrder.sort((a, b) => a.compareTo(b));
    String toSign = keysInAlphabeticalOrder.map((e) => '${e}${params[e]}').join();
    String readyToHash = '$toSign$sharedSecret';

    String hashed = md5.convert(utf8.encode(readyToHash)).toString();
    return hashed;
  }

  String _getParamsAsBody(Map<String, String> params, {
    bool sign=false, bool authRequired=false}) {

    var keysInAlphabeticalOrder = params.keys.toList();
    keysInAlphabeticalOrder.sort((a, b) => a.compareTo(b));
    String combined = keysInAlphabeticalOrder.toList().map((e) => '${e}=${Uri.encodeQueryComponent(params[e])}').join('&');
    
    if (sign || authRequired) {
      String apiSig = _getSignature(params);
      combined = '$combined&api_sig=$apiSig';
    }

    if (useJson) {
      combined = '$combined&$_formatStr=$_jsonStr';
    }

    return combined;
  }

}