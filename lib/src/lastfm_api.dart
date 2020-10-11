
import 'dart:convert';

import 'package:lastfm/lastfm_api.dart';
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

  static const String _formatStr = 'format';
  static const String _jsonStr = 'json';

  static final String ROOT_URL = 'https://ws.audioscrobbler.com/2.0/';
  static final String AUTHORITY = 'ws.audioscrobbler.com';
  static final String PATH = '/2.0';

  LastFmApi(this.apiKey, this.sharedSecret, this.userAgent, 
    {this.useJson=true, this.logger, this.sessionKey});

  Future<LastFmResponse> makeRequest(Map<String,String> params, 
    {bool sign=false, bool authRequired=false}) async {
    
    params.putIfAbsent('api_key', () => apiKey);
    
    if (authRequired) {
      if (sessionKey == null) {
        throw new Exception('Tried to make an authed call without being authed');
      }
      params.putIfAbsent('sk', () => sessionKey);
    }

    var uri = new Uri.https(AUTHORITY, PATH);

    var headers = {
      'User-Agent': userAgent,
      'Accept': 'application/json'
    };

    var body = _getParamsAsBody(params, sign: sign, authRequired: authRequired);

    if (this.logger != null) {
      logger.logRequest(uri.toString(), headers, body);
    }

    var response = await post(uri, headers: headers, body: body);

    var error = null;
    var data = null;
    if (response.statusCode != 200) {
      error = LastFmError.fromMap(json.decode(response.body));
    }
    else {
      data = json.decode(response.body);
    }

    var result = new LastFmResponse(response.statusCode, error, data);

    if (logger != null) {
      logger.logResponse(result);
    }

    return result;
  }

  void logout() {
    sessionKey = null;
  }

  Future<UserSession> loginWithUserNamePassword(String userName, String password) async {
    var session = await getMobileSession(userName, password);
    this.sessionKey = session.key;
    return session;
  }

  void loginWithSessionKey(String sessionKey) {
    this.sessionKey = sessionKey;
  }

  String _getSignature(Map<String, String> params) {
    var keysInAlphabeticalOrder = params.keys.toList();
    keysInAlphabeticalOrder.sort((a, b) => a.compareTo(b));
    String toSign = keysInAlphabeticalOrder.map((e) => '${e}${params[e]}').join();
    print(toSign);
    String readtyToHash = '${toSign}${sharedSecret}';

    String hashed = md5.convert(utf8.encode(readtyToHash)).toString();
    return hashed;
  }

  String _getParamsAsBody(Map<String, String> params, {
    bool sign=false, bool authRequired=false, bool skipUseJson=false}) {

    String combined = params.keys.toList().map((e) => '${e}=${params[e]}').join('&');

    if (!skipUseJson && useJson) {
      combined = '$combined&$_formatStr=$_jsonStr';
    }
    
    if (sign || authRequired) {
      String apiSig = _getSignature(params);
      combined = '$combined&api_sig=$apiSig';
    }

    return combined;
  }

  Future<UserSession> getMobileSession(String userName, String password) async {
    var params = {
      PASSWORD: password,
      USERNAME: userName,
      METHOD: 'auth.getMobileSession'
    };

    var response = await makeRequest(params, sign: true);

    return UserSession.fromLastFmResponse(response);
  }

  Future<LastFmResponse> artistGetSimilar(String artist, 
    {int limit=100, bool autoCorrect=false, String mbid}) {
      
      var params = {
        METHOD: LastFmEndpoints.ARTIST_GETSIMILAR.toString(),
        ARTIST: artist,
        LIMIT: limit.toString(),
        AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
      };

      LastFmHelpers.addValueIfNotNull(params, MBID, mbid);

      return makeRequest(params);
  }

  Future<List<SimilarArtist>> artistGetSimilarTyped(String artist,
    {int limit=100, bool autoCorrect=false, String mbid}) async {
    var response = await artistGetSimilar(artist,
      limit: limit, autoCorrect: autoCorrect, mbid: mbid);
    return SimilarArtist.fromLastFmResponse(response);
  }

  Future<LastFmResponse> artistGetInfo(String artist,
    {String mbid, String lang, bool autoCorrect=false, String userName}) async {
      
      var params = {
        METHOD: LastFmEndpoints.ARTIST_GETINFO.toString(),
        ARTIST: artist,
        AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
      };
      
      LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
      LastFmHelpers.addValueIfNotNull(params, USERNAME, userName);
      LastFmHelpers.addValueIfNotNull(params, LANG, lang);

      return makeRequest(params);
  }

  Future<ArtistInfo> artistGetInfoTyped(String artist,
    {String mbid, String lang, bool autoCorrect=false, String userName}) async {
      var response = await artistGetInfo(artist,
        mbid: mbid, lang: lang, autoCorrect: autoCorrect, userName: userName);
      return ArtistInfo.fromLastFmResponse(response);
  }

  Future<LastFmResponse> artistSearch(String artist,
    {int limit=30, int page=0}) {
      
      var params = {
        METHOD: LastFmEndpoints.ARTIST_SEARCH.toString(),
        ARTIST: artist,
        LIMIT: limit.toString(),
        PAGE: page.toString(),
      };

      return makeRequest(params);
  }

  Future<LastFmResponse> artistGetTopTags(String artist,
    {String mbid, bool autoCorrect=false}) {
      var params = {
        METHOD: LastFmEndpoints.ARTIST_GETTOPTAGS.toString(),
        ARTIST: artist,
        AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect)
      };

      LastFmHelpers.addValueIfNotNull(params, MBID, mbid);

      return makeRequest(params);
  }
  
   Future<LastFmResponse> artistGetTopTracks(String artist,
    {String mbid, bool autoCorrect=false, int page=0, int limit=50}) {
      var params = {
        METHOD: LastFmEndpoints.ARTIST_GETTOPTRACKS.toString(),
        ARTIST: artist,
        AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
        PAGE: page.toString(),
        LIMIT: limit.toString()
      };

      LastFmHelpers.addValueIfNotNull(params, MBID, mbid);

      return makeRequest(params);
  }

  Future<LastFmResponse> trackGetTags({String artist, String trackName,
    String mbid, bool autoCorrect = false, String user}) async {
      var params = {
        AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
        METHOD: 'track.getTags',
      };

      LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
      LastFmHelpers.addValueIfNotNull(params, USER, user);
      LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
      LastFmHelpers.addValueIfNotNull(params, TRACK, trackName);

      return makeRequest(params, authRequired: user == null);
  }

}