part of models;

class Track extends BaseModel {
  final String name;
  final int duration;
  final String mbid;
  final String url;
  final bool streamable;
  final TrackArtist artist;

  Track({this.name, this.duration, this.mbid,
    this.url, this.streamable, this.artist});

  Track.fromMap(Map map) :
    name = map[NAME],
    duration = int.parse(map[DURATION]),
    mbid = map[MBID],
    url = map[URL],
    streamable = int.parse(map[STREAMABLE]) == 1,
    artist = TrackArtist.fromMap(map[ARTIST]);

  @override
  Map toMap() {
    return {
      NAME: name,
      DURATION: duration,
      MBID: mbid,
      URL: url,
      STREAMABLE: streamable,
      ARTIST: artist
    };
  }
}

class TrackArtist extends BaseModel {
  final String name;
  final String mbid;
  final String url;

  TrackArtist({this.name, this.mbid, this.url});

  TrackArtist.fromMap(Map map) :
    name = map[NAME],
    mbid = map[MBID],
    url = map[URL];

  @override
  Map toMap() => {
    NAME: name,
    MBID: mbid,
    URL: url
  };
}


// <track rank="1">
//       <name>Believe</name>
//       <duration>239</duration>
//       <mbid/>
//       <url>http://www.last.fm/music/Cher/_/Believe</url>
//       <streamable fulltrack="0">1</streamable>
//       <artist>
//         <name>Cher</name>
//         <mbid>bfcc6d75-a6a5-4bc6-8282-47aec8531818</mbid>
//         <url>http://www.last.fm/music/Cher</url>
//       </artist>
//     </track>