
import 'package:lastfmapi/lastfm_api.dart';

import 'secret.dart';

var client = new LastFmApi(API_KEY, SHARED_SECRET, 'lastfm_dart_example', 
  logger: LastFmConsoleLogger());

main() async {

  var result = await client.artistGetTopTracks('Saosin');

}