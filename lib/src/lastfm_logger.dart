
import 'package:lastfmapi/src/lastfm_helpers.dart';
import 'package:lastfmapi/src/lastfm_response.dart';

abstract class LastFmLogger {
  void logRequest(String uri, Map<String, String> headers);
  void logResponse(LastFmResponse response);
}

class LastFmConsoleLogger implements LastFmLogger {
  @override
  void logRequest(String uri, Map<String, String> headers) {
    Map map = {
      'uri': uri,
      'headers': headers,
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