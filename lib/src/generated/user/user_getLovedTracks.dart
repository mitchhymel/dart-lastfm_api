class UserGetLovedTracks {
  Lovedtracks lovedtracks;

  UserGetLovedTracks({this.lovedtracks});

  UserGetLovedTracks.fromJson(Map<String, dynamic> json) {
    lovedtracks = json['lovedtracks'] != null
        ? new Lovedtracks.fromJson(json['lovedtracks'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.lovedtracks != null) {
      data['lovedtracks'] = this.lovedtracks.toJson();
    }
    return data;
  }
}

class Lovedtracks {
  Attr attr;
  List<Track> track;

  Lovedtracks({this.attr, this.track});

  Lovedtracks.fromJson(Map<String, dynamic> json) {
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
  String mbid;
  Date date;
  String url;
  List<Image> image;
  String name;
  Streamable streamable;

  Track(
      {this.artist,
      this.mbid,
      this.date,
      this.url,
      this.image,
      this.name,
      this.streamable});

  Track.fromJson(Map<String, dynamic> json) {
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    mbid = json['mbid'];
    date = json['date'] != null ? new Date.fromJson(json['date']) : null;
    url = json['url'];
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
    name = json['name'];
    streamable = json['streamable'] != null
        ? new Streamable.fromJson(json['streamable'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    data['mbid'] = this.mbid;
    if (this.date != null) {
      data['date'] = this.date.toJson();
    }
    data['url'] = this.url;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    if (this.streamable != null) {
      data['streamable'] = this.streamable.toJson();
    }
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

class Date {
  String uts;
  String text;

  Date({this.uts, this.text});

  Date.fromJson(Map<String, dynamic> json) {
    uts = json['uts'];
    text = json['#text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uts'] = this.uts;
    data['#text'] = this.text;
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
