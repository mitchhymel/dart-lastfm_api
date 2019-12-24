
import 'package:lastfmapi/lastfm_api.dart';

import 'secret.dart';

var logger = new LastFmConsoleLogger();
var client = new LastFmApi(API_KEY, SHARED_SECRET, 'lastfm_dart_example');

main() async {

  await similarArtistTest();
  // await artistGetInfoTest();
}

artistGetInfoTest() async {
  var result = await client.artistGetInfo('Saosin', userName: 'mythichelm');
  print(LastFmHelpers.getPrettyStringFromMap(result.toMap()));
}

similarArtistTest() async {
  var result = await client.artistGetSimilar('Saosin');
  print(LastFmHelpers.getPrettyStringFromMap(result[0].toMap()));
}