part of models;

class Track extends BaseModel {
  final String name;
  final int duration;
  final String mbid;
  final String url;
  final bool streamable;
  final TrackArtist artist;
  final List<LastFmImage> image;
  final int playCount;

  Track({this.name, this.duration, this.mbid,
    this.url, this.streamable, this.artist, this.image, this.playCount});

  Track.fromMap(Map map) :
    name = map[NAME],
    duration = int.parse(map[DURATION]),
    mbid = map[MBID],
    url = map[URL],
    streamable = int.parse(map[STREAMABLE][FULLTRACK]) == 1,
    artist = TrackArtist.fromMap(map[ARTIST]),
    image = LastFmImage.fromJsonList(map[IMAGE]),
    playCount = int.parse(map[PLAYCOUNT]);

  @override
  Map toMap() {
    return {
      NAME: name,
      DURATION: duration,
      MBID: mbid,
      URL: url,
      STREAMABLE: streamable,
      ARTIST: artist,
      IMAGE: image,
      PLAYCOUNT: playCount,
    };
  }

  static List<Track> fromTagLastFmResponse(LastFmResponse response) {
    List<Track> tracks = [];
    List maps = response.data['taggings']['tracks']['track'];
    maps.forEach((element) {
      tracks.add(Track.fromMap(element));
    });

    return tracks;
  }

  static List<Track> fromJsonList(List<Map> maps) {
    List<Track> list = [];
    maps.forEach((x) => list.add(Track.fromMap(x)));
    return list;
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