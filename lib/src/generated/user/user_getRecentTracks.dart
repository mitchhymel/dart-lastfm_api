class UserGetRecentTracks {
  int status;
  Null error;
  Data data;

  UserGetRecentTracks({this.status, this.error, this.data});

  UserGetRecentTracks.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    error = json['error'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['error'] = this.error;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  Recenttracks recenttracks;

  Data({this.recenttracks});

  Data.fromJson(Map<String, dynamic> json) {
    recenttracks = json['recenttracks'] != null
        ? new Recenttracks.fromJson(json['recenttracks'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recenttracks != null) {
      data['recenttracks'] = this.recenttracks.toJson();
    }
    return data;
  }
}

class Recenttracks {
  Attr attr;
  List<Track> track;

  Recenttracks({this.attr, this.track});

  Recenttracks.fromJson(Map<String, dynamic> json) {
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
    if (json['track'] != null) {
      track = new List<Track>();
      json['track'].forEach((v) {
        track.add(new Track.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    if (this.track != null) {
      data['track'] = this.track.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Attr {
  String page;
  String perPage;
  String user;
  String total;
  String totalPages;

  Attr({this.page, this.perPage, this.user, this.total, this.totalPages});

  Attr.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['perPage'];
    user = json['user'];
    total = json['total'];
    totalPages = json['totalPages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['perPage'] = this.perPage;
    data['user'] = this.user;
    data['total'] = this.total;
    data['totalPages'] = this.totalPages;
    return data;
  }
}

class Track {
  Artist artist;
  TrackAttr attr;
  String mbid;
  Artist album;
  String streamable;
  String url;
  String name;
  List<Image> image;

  Track(
      {this.artist,
      this.attr,
      this.mbid,
      this.album,
      this.streamable,
      this.url,
      this.name,
      this.image});

  Track.fromJson(Map<String, dynamic> json) {
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    attr = json['@attr'] != null ? new TrackAttr.fromJson(json['@attr']) : null;
    mbid = json['mbid'];
    album = json['album'] != null ? new Artist.fromJson(json['album']) : null;
    streamable = json['streamable'];
    url = json['url'];
    name = json['name'];
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
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

class TrackAttr {
  String nowplaying;

  TrackAttr({this.nowplaying});

  TrackAttr.fromJson(Map<String, dynamic> json) {
    nowplaying = json['nowplaying'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nowplaying'] = this.nowplaying;
    return data;
  }
}

class Image {
  String size;
  String text;

  Image({this.size, this.text});

  Image.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    text = json['#text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['size'] = this.size;
    data['#text'] = this.text;
    return data;
  }
}
