
import 'dart:convert';

import 'package:lastfmapi/lastfm_api.dart';
import 'package:lastfmapi/src/enums/enums.dart';

import 'package:http/http.dart';
import 'package:lastfmapi/src/lastfm_response.dart';

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


  artistGetSimilar(String artist, 
    {int limit=100, bool autoCorrect=false, String mbid}) {
      return makeGetRequest({
        'method': LastFmEndpoints.ARTIST_GETSIMILAR.toString(),
        'artist': artist,
        'mbid': mbid,
        'limit': limit.toString(),
        'autocorrect': autoCorrect.toString()
      });
  }


  
}