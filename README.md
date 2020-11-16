# lastfmapi

A mostly fully implemented dart library for calling the api of [last.fm](https://www.last.fm/api)

# Example
To see a full example, check [example.dart](https://github.com/mitchhymel/dart-lastfm_api/blob/master/example/example.dart)

```dart
  // you should only ask for username and password once
  // to start a session, then you only need to store
  // the session key
  var client = new LastFmApi(apiKey, sharedSecret, userAgent);
  UserSession session = await client.loginWithUserNamePassword(username, password);
  
  // cache session.key somehow (e.g. shared_preferences)

  // ....

  // for all other logins, fetch your session key and initialize
  // client like so
  var client = new LastFmApi(apiKey, sharedSecret, userAgent);
  client.loginWithSessionKey(sessionkey);

  // Now you can make requests
  LastFmResponse res = await client.artist.getCorrection(artist);
  print(res.toPrettyJson());
```

# Endpoints implemented

"*" indicates that it is implemented but not yet tested

Endpoint | Implemented?
:------------ | :-------------
album.addTags | :heavy_check_mark:
album.getInfo | :heavy_check_mark:
album.getTags | :heavy_check_mark:
album.removeTag | :heavy_check_mark:
album.search | :heavy_check_mark:
artist.addTags | :heavy_check_mark:
artist.getCorrection | :heavy_check_mark:
artist.getInfo | :heavy_check_mark:
artist.getSimilar | :heavy_check_mark:
artist.getTags | :heavy_check_mark:
artist.getTopAlbums | :heavy_check_mark:
artist.getTopTags | :heavy_check_mark:
artist.getTopTracks | :heavy_check_mark:
artist.removeTag | :heavy_check_mark:
artist.search | :heavy_check_mark:
auth.getMobileSession | :heavy_check_mark:
auth.getSession* | :heavy_check_mark:
auth.getToken* | :heavy_check_mark:
chart.getTopArtists | :heavy_check_mark:
chart.getTopTags | :heavy_check_mark:
chart.getTopTracks | :heavy_check_mark:
geo.getTopArtists*| :heavy_check_mark:
geo.getTopTracks*| :heavy_check_mark:
library.getArtists| :heavy_check_mark:
tag.getInfo| :heavy_check_mark:
tag.getSimilar| :x:
tag.getTopAlbums| :heavy_check_mark:
tag.getTopArtists| :heavy_check_mark:
tag.getTopTracks| :heavy_check_mark:
tag.getWeeklyChartList| :heavy_check_mark:
track.addTags| :heavy_check_mark:
track.getCorrection| :heavy_check_mark:
track.getInfo| :heavy_check_mark:
track.getSimilar| :heavy_check_mark:
track.getTags| :heavy_check_mark:
track.getTopTags| :heavy_check_mark:
track.love| :heavy_check_mark:
track.removeTag| :heavy_check_mark:
track.scrobble| :x:
track.search| :heavy_check_mark:
track.unlove| :heavy_check_mark:
track.updateNowPlaying| :x:
user.getFriends| :heavy_check_mark:
user.getInfo| :heavy_check_mark:
user.getLovedTracks| :heavy_check_mark:
user.getPersonalTags| :heavy_check_mark:
user.getRecentTracks| :heavy_check_mark:
user.getTopAlbums| :heavy_check_mark:
user.getTopArtists| :heavy_check_mark:
user.getTopTags| :heavy_check_mark:
user.getTopTracks| :heavy_check_mark:
user.getWeeklyAlbumChart| :heavy_check_mark:
user.getWeeklyArtistChart| :heavy_check_mark:
user.getWeeklyChartList| :heavy_check_mark:
user.getWeeklyTrackChart| :heavy_check_mark:
