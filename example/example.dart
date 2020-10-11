
import 'package:lastfm/lastfm_api.dart';

import 'secret.dart';

var logger = new LastFmConsoleLogger();
var client = new LastFmApi(API_KEY, SHARED_SECRET, 'lastfm_dart_example');


main() async {

  await client.loginWithSessionKey(SESSION_KEY);
  var res = await client.trackGetTags(
    artist: 'Hollowealth',
    trackName: 'The Distance Affair',
  );

  //print(LastFmHelpers.getPrettyStringFromMap(res.toMap()));
}

artistGetInfoTest() async {
  // var result = await client.artistGetInfo('Saosin', userName: 'mythichelm');
  // print(LastFmHelpers.getPrettyStringFromMap(result.data));

  var typed = await client.artistGetInfoTyped('Saosin', userName: 'mythichelm');
  print(LastFmHelpers.getPrettyStringFromMap(typed.toMap()));
}

similarArtistTest() async {
  var result = await client.artistGetSimilarTyped('Saosin');
  print(LastFmHelpers.getPrettyStringFromMap(result[0].toMap()));
}