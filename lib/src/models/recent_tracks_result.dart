part of models;

class RecentTracksResult {
  Artist artist;
  Attr attr;
  String mbid;
  Artist album;
  String streamable;
  String url;
  String name;
  List<LastFmImage> image;
  bool get nowPlaying => attr != null && attr.nowplaying == true;

  RecentTracksResult(
      {this.artist,
      this.attr,
      this.mbid,
      this.album,
      this.streamable,
      this.url,
      this.name,
      this.image});

  RecentTracksResult.fromJson(Map<String, dynamic> json) {
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
    mbid = json['mbid'];
    album = json['album'] != null ? new Artist.fromJson(json['album']) : null;
    streamable = json['streamable'];
    url = json['url'];
    name = json['name'];
    if (json['image'] != null) {
      image = new List<LastFmImage>();
      json['image'].forEach((v) {
        image.add(new LastFmImage.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    data['mbid'] = this.mbid;
    if (this.album != null) {
      data['album'] = this.album.toJson();
    }
    data['streamable'] = this.streamable;
    data['url'] = this.url;
    data['name'] = this.name;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    return data;
  }

  static List<RecentTracksResult> fromLastFmResponse(LastFmResponse response) {
    List<RecentTracksResult> tracks = [];
    List maps = response.data['recenttracks']['track'];
    maps.forEach((element) {
      tracks.add(RecentTracksResult.fromJson(element));
    });

    return tracks;
  }
}

class Artist {
  String mbid;
  String text;

  Artist({this.mbid, this.text});

  Artist.fromJson(Map<String, dynamic> json) {
    mbid = json['mbid'];
    text = json['#text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mbid'] = this.mbid;
    data['#text'] = this.text;
    return data;
  }
}

class Attr {
  bool nowplaying;

  Attr({this.nowplaying});

  Attr.fromJson(Map<String, dynamic> json) {
    nowplaying = json['nowplaying'].toString().toLowerCase() == 'true';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nowplaying'] = this.nowplaying;
    return data;
  }
}
