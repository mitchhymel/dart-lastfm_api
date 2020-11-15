class ChartGetTopTracks {
  Tracks tracks;

  ChartGetTopTracks({this.tracks});

  ChartGetTopTracks.fromJson(Map<String, dynamic> json) {
    tracks =
        json['tracks'] != null ? new Tracks.fromJson(json['tracks']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tracks != null) {
      data['tracks'] = this.tracks.toJson();
    }
    return data;
  }
}

class Tracks {
  List<Track> track;
  Attr attr;

  Tracks({this.track, this.attr});

  Tracks.fromJson(Map<String, dynamic> json) {
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
  String duration;
  String playcount;
  String listeners;
  String mbid;
  String url;
  Streamable streamable;
  Artist artist;
  List<Image> image;

  Track(
      {this.name,
      this.duration,
      this.playcount,
      this.listeners,
      this.mbid,
      this.url,
      this.streamable,
      this.artist,
      this.image});

  Track.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    duration = json['duration'];
    playcount = json['playcount'];
    listeners = json['listeners'];
    mbid = json['mbid'];
    url = json['url'];
    streamable = json['streamable'] != null
        ? new Streamable.fromJson(json['streamable'])
        : null;
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
    data['duration'] = this.duration;
    data['playcount'] = this.playcount;
    data['listeners'] = this.listeners;
    data['mbid'] = this.mbid;
    data['url'] = this.url;
    if (this.streamable != null) {
      data['streamable'] = this.streamable.toJson();
    }
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
  String page;
  String perPage;
  String totalPages;
  String total;

  Attr({this.page, this.perPage, this.totalPages, this.total});

  Attr.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['perPage'];
    totalPages = json['totalPages'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['perPage'] = this.perPage;
    data['totalPages'] = this.totalPages;
    data['total'] = this.total;
    return data;
  }
}
