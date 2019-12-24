
import 'dart:convert';

import 'package:lastfmapi/lastfm_api.dart';
import 'package:lastfmapi/src/enums/enums.dart';

import 'package:http/http.dart';
import 'package:lastfmapi/src/lastfm_response.dart';
import 'package:lastfmapi/src/models/models.dart';

class LastFmApi {
  final String apiKey;
  final String sharedSecret;
  final String userAgent;
  final bool useJson;
  final LastFmLogger logger;

  static final String ROOT_URL = 'http://ws.audioscrobbler.com/2.0/';
  static final String AUTHORITY = 'ws.audioscrobbler.com';
  static final String PATH = '/2.0';

  LastFmApi(this.apiKey, this.sharedSecret, this.userAgent, 
    {this.useJson=true, this.logger});

  Future<LastFmResponse> makeGetRequest(Map<String,String> params) async {
    params.putIfAbsent('api_key', () => apiKey);
    if (useJson) {
      params.putIfAbsent('format', () => 'json');
    }

    var uri = new Uri.http(AUTHORITY, PATH, params);

    var headers = {
      'User-Agent': userAgent,
      'Accept': 'application/json'
    };

    if (this.logger != null) {
      logger.logRequest(uri.toString(), headers);
    }

    var response = await get(uri, headers: headers);

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


  Future<LastFmResponse> artistGetSimilar(String artist, 
    {int limit=100, bool autoCorrect=false, String mbid}) {
      
      var params = {
        'method': LastFmEndpoints.ARTIST_GETSIMILAR.toString(),
        ARTIST: artist,
        'limit': limit.toString(),
        'autocorrect': autoCorrect.toString()
      };

      LastFmHelpers.addValueIfNotNull(params, MBID, mbid);

      return makeGetRequest(params);
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
        'method': LastFmEndpoints.ARTIST_GETINFO.toString(),
        ARTIST: artist,
        'autocorrect': autoCorrect.toString(),
      };
      
      LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
      LastFmHelpers.addValueIfNotNull(params, 'username', userName);
      LastFmHelpers.addValueIfNotNull(params, 'lang', lang);

      return makeGetRequest(params);
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
        'method': LastFmEndpoints.ARTIST_SEARCH.toString(),
        ARTIST: artist,
        'limit': limit.toString(),
        'page': page.toString(),
      };

      return makeGetRequest(params);
  }

  Future<LastFmResponse> artistGetTopTags(String artist,
    {String mbid, bool autoCorrect=false}) {
      var params = {
        'method': LastFmEndpoints.ARTIST_GETTOPTAGS.toString(),
        ARTIST: artist,
        'autocorrect': autoCorrect.toString()
      };

      LastFmHelpers.addValueIfNotNull(params, MBID, mbid);

      return makeGetRequest(params);
  }
  
   Future<LastFmResponse> artistGetTopTracks(String artist,
    {String mbid, bool autoCorrect=false, int page=0, int limit=50}) {
      var params = {
        'method': LastFmEndpoints.ARTIST_GETTOPTRACKS.toString(),
        ARTIST: artist,
        'autocorrect': autoCorrect.toString(),
        'page': page.toString(),
        'limit': limit.toString()
      };

      LastFmHelpers.addValueIfNotNull(params, MBID, mbid);

      return makeGetRequest(params);
  }

}