
import 'package:lastfm/lastfm_api.dart';

import 'secret.dart';
import 'dart:io';

var logger = new LastFmConsoleLogger();
var client = new LastFmApi(API_KEY, SHARED_SECRET, USER_AGENT,
  logger: logger,
);

String artist = 'Of Machines';
String album = 'As If Everything Was Held In Place';
String track = 'It Must Belong Somewhere';
String user = 'mythichelm';
String tag = 'Disco';

main() async {

  // you should only ask for username and password once
  // to start a session, then you only need to store
  // the session key
  //UserSession session = await client.loginWithUserNamePassword('username', 'password');
  
  // cache session.key somehow (e.g. shared_preferences)

  // ....

  // for all other logins, fetch your session key and initialize
  // client like so
  client.loginWithSessionKey(SESSION_KEY);

  // Now you can make requests
  LastFmResponse res = await client.track.addTags('Emery Heights', 'Clarity', ['phc']);
  print(res.toPrettyJson());
  //printResp(res);
}

printResp(LastFmResponse resp) {
  print(LastFmHelpers.getPrettyStringFromMap(resp.toJson()));
}

testEveryMethod() async {
  await testAlbum();
  await testArtist();
  await testChart();
  await testGeo();
  await testLibrary();
  await testTrack();
  await testUser();
}

testAlbum() async {
  var client = getClient('album');

  await client.album.getInfo(artist: artist, album: album);
  await client.album.getTags(artist: artist, album: album, user: user);
  await client.album.getTopTags(artist: artist, album: album);
  await client.album.search(album);
}

testArtist() async {
  var client = getClient('artist');

  await client.artist.getCorrection(artist);
  await client.artist.getInfo(artist: artist, userName: user);
  await client.artist.getSimilar(artist: artist);
  await client.artist.getTags(artist: artist);
  await client.artist.getTopAlbums(artist: artist);
  await client.artist.getTopTags(artist: artist);
  await client.artist.search(artist);
}

testChart() async {
  var client = getClient('chart');

  await client.chart.getTopArtists();
  await client.chart.getTopTags();
  await client.chart.getTopTracks();
}

testGeo() async {
  var client = getClient('geo');

  await client.geo.getTopArtists('United States of America');
  await client.geo.getTopTracks('United States of America');
}

testLibrary() async {
  var client = getClient('library');

  await client.library.getArtists(user);
}

testTag() async {
  var client = getClient('tag');
  
  await client.tag.getInfo(tag);
  await client.tag.getTopAlbums(tag);
  await client.tag.getTopArtists(tag);
  await client.tag.getTopTags();
  await client.tag.getTopTracks(tag);
  await client.tag.getWeeklyChartList(tag);
}

testTrack() async {
  var client = getClient('track');

  await client.track.getCorrection(artist, track);
  await client.track.getInfo(artist: artist, track: track);
  await client.track.getSimilar(artist: artist, track: track);
  await client.track.getTags(artist: artist, track: track, user: user);
  await client.track.getTopTags(artist: artist, track: track);
  await client.track.search(track);
}

testUser() async {
  var client = getClient('user');

  await client.user.getFriends(user);
  await client.user.getInfo(user);
  await client.user.getLovedTracks(user);
  await client.user.getPersonalTags(user, tag, 'track');
  await client.user.getTopAlbums(user);
  await client.user.getTopArtists(user);
  await client.user.getTopTags(user);
  await client.user.getTopTracks(user);
  await client.user.getWeeklyAlbumChart(user);
  await client.user.getWeeklyArtistChart(user);
  await client.user.getWeeklyChartList(user);
  await client.user.getWeeklyTrackChart(user);
}

LastFmApi getClient(String fileToLogTo) {
  var client = new LastFmApi(API_KEY, SHARED_SECRET, USER_AGENT, 
    logger: LastFmConsoleLogger(),
    //logger: new LogToFileLogger(fileToLogTo)
  );
  client.loginWithSessionKey(SESSION_KEY);
  return client;
}

class LogToFileLogger extends LastFmLogger {

  final String outputFile;
  File file;

  LogToFileLogger(this.outputFile) {
    file = new File(outputFile);
    if (!file.existsSync()) {
      file.createSync();
    }
  }

  @override
  void logRequest(String uri, Map<String, String> headers, String body) {
    Map map = {
      'uri': uri,
      'headers': headers,
      'body': body
    };

    write('LastFm Request:');
    write(LastFmHelpers.getPrettyStringFromMap(map));
  }

  @override
  void logResponse(LastFmResponse response) {
    write('LastFm Response:');
    write(LastFmHelpers.getPrettyStringFromMap(response.toJson()));
  }
  
  @override
  void logRawResponse(dynamic data) {
    write('LastFm Raw Response:');
    write(LastFmHelpers.getPrettyStringFromMap(data));
  }

  void write(String str) {
    file.writeAsStringSync(str + '\n', mode: FileMode.append);
  }


}