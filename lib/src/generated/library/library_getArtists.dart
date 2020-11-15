class LibraryGetArtists {
  Artists artists;

  LibraryGetArtists({this.artists});

  LibraryGetArtists.fromJson(Map<String, dynamic> json) {
    artists =
        json['artists'] != null ? new Artists.fromJson(json['artists']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.artists != null) {
      data['artists'] = this.artists.toJson();
    }
    return data;
  }
}

class Artists {
  List<Artist> artist;
  Attr attr;

  Artists({this.artist, this.attr});

  Artists.fromJson(Map<String, dynamic> json) {
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
  String url;
  String mbid;
  String tagcount;
  String playcount;
  String streamable;
  String name;
  List<Image> image;

  Artist(
      {this.url,
      this.mbid,
      this.tagcount,
      this.playcount,
      this.streamable,
      this.name,
      this.image});

  Artist.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    mbid = json['mbid'];
    tagcount = json['tagcount'];
    playcount = json['playcount'];
    streamable = json['streamable'];
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
    data['url'] = this.url;
    data['mbid'] = this.mbid;
    data['tagcount'] = this.tagcount;
    data['playcount'] = this.playcount;
    data['streamable'] = this.streamable;
    data['name'] = this.name;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
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
