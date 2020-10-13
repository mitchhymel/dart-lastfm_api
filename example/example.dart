
import 'package:lastfm/lastfm_api.dart';

import 'secret.dart';

var logger = new LastFmConsoleLogger();
var client = new LastFmApi(API_KEY, SHARED_SECRET, 'lastfm_dart_example', logger: logger);


main() async {

  await client.loginWithSessionKey(SESSION_KEY);

  //print(LastFmHelpers.getPrettyStringFromMap(res.toMap()));
}

artistGetInfoTest() async {
  // var result = await client.artistGetInfo('Saosin', userName: 'mythichelm');
  // print(LastFmHelpers.getPrettyStringFromMap(result.data));

  var typed = await client.artist.getInfoTyped(artist: 'Saosin', userName: 'mythichelm');
  print(LastFmHelpers.getPrettyStringFromMap(typed.toMap()));
}

similarArtistTest() async {
  var result = await client.artist.getSimilarTyped(artist: 'Saosin');
  print(LastFmHelpers.getPrettyStringFromMap(result[0].toMap()));
}