class TrackGetSimilar {
  Similartracks similartracks;

  TrackGetSimilar({this.similartracks});

  TrackGetSimilar.fromJson(Map<String, dynamic> json) {
    similartracks = json['similartracks'] != null
        ? new Similartracks.fromJson(json['similartracks'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.similartracks != null) {
      data['similartracks'] = this.similartracks.toJson();
    }
    return data;
  }
}

class Similartracks {
  List<Track> track;
  Attr attr;

  Similartracks({this.track, this.attr});

  Similartracks.fromJson(Map<String, dynamic> json) {
    if (json['track'] != null) {
      track = new List<Track>();
      json['track'].forEach((v) {
        track.add(new Track.fromJson(v));
      });
    }
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.track != null) {
      data['track'] = this.track.map((v) => v.toJson()).toList();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    return data;
  }
}

class Track {
  String name;
  int playcount;
  String mbid;
  double match;
  String url;
  Streamable streamable;
  int duration;
  Artist artist;
  List<Image> image;

  Track(
      {this.name,
      this.playcount,
      this.mbid,
      this.match,
      this.url,
      this.streamable,
      this.duration,
      this.artist,
      this.image});

  Track.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    playcount = json['playcount'];
    mbid = json['mbid'];
    match = json['match'];
    url = json['url'];
    streamable = json['streamable'] != null
        ? new Streamable.fromJson(json['streamable'])
        : null;
    duration = json['duration'];
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['playcount'] = this.playcount;
    data['mbid'] = this.mbid;
    data['match'] = this.match;
    data['url'] = this.url;
    if (this.streamable != null) {
      data['streamable'] = this.streamable.toJson();
    }
    data['duration'] = this.duration;
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Streamable {
  String text;
  String fulltrack;

  Streamable({this.text, this.fulltrack});

  Streamable.fromJson(Map<String, dynamic> json) {
    text = json['#text'];
    fulltrack = json['fulltrack'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['#text'] = this.text;
    data['fulltrack'] = this.fulltrack;
    return data;
  }
}

class Artist {
  String name;
  String mbid;
  String url;

  Artist({this.name, this.mbid, this.url});

  Artist.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mbid = json['mbid'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['mbid'] = this.mbid;
    data['url'] = this.url;
    return data;
  }
}

class Image {
  String text;
  String size;

  Image({this.text, this.size});

  Image.fromJson(Map<String, dynamic> json) {
    text = json['#text'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['#text'] = this.text;
    data['size'] = this.size;
    return data;
  }
}

class Attr {
  String artist;

  Attr({this.artist});

  Attr.fromJson(Map<String, dynamic> json) {
    artist = json['artist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['artist'] = this.artist;
    return data;
  }
}
