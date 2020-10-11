
import 'package:lastfm/src/lastfm_helpers.dart';
import 'package:lastfm/src/lastfm_response.dart';

abstract class LastFmLogger {
  void logRequest(String uri, Map<String, String> headers, String body);
  void logResponse(LastFmResponse response);
}

class LastFmConsoleLogger implements LastFmLogger {
  @override
  void logRequest(String uri, Map<String, String> headers, String body) {
    Map map = {
      'uri': uri,
      'headers': headers,
      'body': body
    };

    print('LastFm Request:');
    print(LastFmHelpers.getPrettyStringFromMap(map));
  }

  @override
  void logResponse(LastFmResponse response) {
    print('LastFm Response:');
    print(LastFmHelpers.getPrettyStringFromMap(response.toMap()));
  }
}