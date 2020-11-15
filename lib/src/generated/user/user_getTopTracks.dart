class UserGetTopTracks {
  Toptracks toptracks;

  UserGetTopTracks({this.toptracks});

  UserGetTopTracks.fromJson(Map<String, dynamic> json) {
    toptracks = json['toptracks'] != null
        ? new Toptracks.fromJson(json['toptracks'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.toptracks != null) {
      data['toptracks'] = this.toptracks.toJson();
    }
    return data;
  }
}

class Toptracks {
  Attr attr;
  List<Track> track;

  Toptracks({this.attr, this.track});

  Toptracks.fromJson(Map<String, dynamic> json) {
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
  RankAttr attr;
  String duration;
  String playcount;
  Artist artist;
  List<Image> image;
  Streamable streamable;
  String mbid;
  String name;
  String url;

  Track(
      {this.attr,
      this.duration,
      this.playcount,
      this.artist,
      this.image,
      this.streamable,
      this.mbid,
      this.name,
      this.url});

  Track.fromJson(Map<String, dynamic> json) {
    attr = json['@attr'] != null ? new RankAttr.fromJson(json['@attr']) : null;
    duration = json['duration'];
    playcount = json['playcount'];
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
    streamable = json['streamable'] != null
        ? new Streamable.fromJson(json['streamable'])
        : null;
    mbid = json['mbid'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    data['duration'] = this.duration;
    data['playcount'] = this.playcount;
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    if (this.streamable != null) {
      data['streamable'] = this.streamable.toJson();
    }
    data['mbid'] = this.mbid;
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class RankAttr {
  String rank;

  RankAttr({this.rank});

  RankAttr.fromJson(Map<String, dynamic> json) {
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rank'] = this.rank;
    return data;
  }
}

class Artist {
  String url;
  String name;
  String mbid;

  Artist({this.url, this.name, this.mbid});

  Artist.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    name = json['name'];
    mbid = json['mbid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['name'] = this.name;
    data['mbid'] = this.mbid;
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

class Streamable {
  String fulltrack;
  String text;

  Streamable({this.fulltrack, this.text});

  Streamable.fromJson(Map<String, dynamic> json) {
    fulltrack = json['fulltrack'];
    text = json['#text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fulltrack'] = this.fulltrack;
    data['#text'] = this.text;
    return data;
  }
}
