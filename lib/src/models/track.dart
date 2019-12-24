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
    name = map['name'],
    duration = int.parse(map['duration']),
    mbid = map['mbid'],
    url = map['url'],
    streamable = int.parse(map['streamable']) == 1,
    artist = TrackArtist.fromMap(map['artist']);

  @override
  Map toMap() {
    return {
      'name': name,
      'duration': duration,
      'mbid': mbid,
      'url': url,
      'streamable': streamable,
      'artist': artist.toMap()
    };
  }
}

class TrackArtist extends BaseModel {
  final String name;
  final String mbid;
  final String url;

  TrackArtist({this.name, this.mbid, this.url});

  TrackArtist.fromMap(Map map) :
    name = map['name'],
    mbid = map['mbid'],
    url = map['url'];

  @override
  Map toMap() => {
    'name': name,
    'mbid': mbid,
    'url': url
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