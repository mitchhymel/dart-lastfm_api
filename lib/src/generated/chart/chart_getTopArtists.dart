class ChartGetTopArtists {
  Artists artists;

  ChartGetTopArtists({this.artists});

  ChartGetTopArtists.fromJson(Map<String, dynamic> json) {
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
  String name;
  String playcount;
  String listeners;
  String mbid;
  String url;
  String streamable;
  List<Image> image;

  Artist(
      {this.name,
      this.playcount,
      this.listeners,
      this.mbid,
      this.url,
      this.streamable,
      this.image});

  Artist.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    playcount = json['playcount'];
    listeners = json['listeners'];
    mbid = json['mbid'];
    url = json['url'];
    streamable = json['streamable'];
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
    data['listeners'] = this.listeners;
    data['mbid'] = this.mbid;
    data['url'] = this.url;
    data['streamable'] = this.streamable;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
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