class UserGetTopAlbums {
  Topalbums topalbums;

  UserGetTopAlbums({this.topalbums});

  UserGetTopAlbums.fromJson(Map<String, dynamic> json) {
    topalbums = json['topalbums'] != null
        ? new Topalbums.fromJson(json['topalbums'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.topalbums != null) {
      data['topalbums'] = this.topalbums.toJson();
    }
    return data;
  }
}

class Topalbums {
  List<Album> album;
  Attr attr;

  Topalbums({this.album, this.attr});

  Topalbums.fromJson(Map<String, dynamic> json) {
    if (json['album'] != null) {
      album = new List<Album>();
      json['album'].forEach((v) {
        album.add(new Album.fromJson(v));
      });
    }
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.album != null) {
      data['album'] = this.album.map((v) => v.toJson()).toList();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    return data;
  }
}

class Album {
  Artist artist;
  RankAttr attr;
  List<Image> image;
  String playcount;
  String url;
  String name;
  String mbid;

  Album(
      {this.artist,
      this.attr,
      this.image,
      this.playcount,
      this.url,
      this.name,
      this.mbid});

  Album.fromJson(Map<String, dynamic> json) {
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    attr = json['@attr'] != null ? new RankAttr.fromJson(json['@attr']) : null;
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
    playcount = json['playcount'];
    url = json['url'];
    name = json['name'];
    mbid = json['mbid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    data['playcount'] = this.playcount;
    data['url'] = this.url;
    data['name'] = this.name;
    data['mbid'] = this.mbid;
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
