import 'package:lastfmapi/src/enums/enums.dart';

class LastFmEndpoints {
  static const LastFmEndpoints ARTIST_GETSIMILAR = const LastFmEndpoints._private('artist.getSimilar');
  static const LastFmEndpoints ARTIST_SEARCH = const LastFmEndpoints._private('artist.search');
  static const LastFmEndpoints ARTIST_GETINFO = const LastFmEndpoints._private('artist.getInfo');
  static const LastFmEndpoints ARTIST_GETTOPTAGS = const LastFmEndpoints._private('artist.getTopTags');
  static const LastFmEndpoints ARTIST_GETTOPTRACKS = const LastFmEndpoints._private('artist.getTopTracks');


  final String value;
  const LastFmEndpoints._private(this.value);

  @override
  String toString() {
    return this.value;
  }
}