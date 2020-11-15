class UserGetTopArtists {
  Topartists topartists;

  UserGetTopArtists({this.topartists});

  UserGetTopArtists.fromJson(Map<String, dynamic> json) {
    topartists = json['topartists'] != null
        ? new Topartists.fromJson(json['topartists'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.topartists != null) {
      data['topartists'] = this.topartists.toJson();
    }
    return data;
  }
}

class Topartists {
  List<Artist> artist;
  Attr attr;

  Topartists({this.artist, this.attr});

  Topartists.fromJson(Map<String, dynamic> json) {
    if (json['artist'] != null) {
      artist = new List<Artist>();
      json['artist'].forEach((v) {
        artist.add(new Artist.fromJson(v));
      });
    }
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.artist != null) {
      data['artist'] = this.artist.map((v) => v.toJson()).toList();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    return data;
  }
}

class Artist {
  RankAttr attr;
  String mbid;
  String url;
  String playcount;
  List<Image> image;
  String name;
  String streamable;

  Artist(
      {this.attr,
      this.mbid,
      this.url,
      this.playcount,
      this.image,
      this.name,
      this.streamable});

  Artist.fromJson(Map<String, dynamic> json) {
    attr = json['@attr'] != null ? new RankAttr.fromJson(json['@attr']) : null;
    mbid = json['mbid'];
    url = json['url'];
    playcount = json['playcount'];
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
    name = json['name'];
    streamable = json['streamable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    data['mbid'] = this.mbid;
    data['url'] = this.url;
    data['playcount'] = this.playcount;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['streamable'] = this.streamable;
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
