
import 'package:lastfm/lastfm_api.dart';

import 'secret.dart';

var logger = new LastFmConsoleLogger();
var client = new LastFmApi(API_KEY, SHARED_SECRET, 'lastfm_dart_example');


main() async {

  await client.loginWithSessionKey(SESSION_KEY);
  var res = await client.track.getTags(
    artist: 'Hollowealth', 
    track: 'The Distance Affair',
  );

  print(res.toPrettyJson());

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