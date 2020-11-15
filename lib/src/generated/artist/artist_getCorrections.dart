class ArtistGetCorrections {
  Corrections corrections;

  ArtistGetCorrections({this.corrections});

  ArtistGetCorrections.fromJson(Map<String, dynamic> json) {
    corrections = json['corrections'] != null
        ? new Corrections.fromJson(json['corrections'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.corrections != null) {
      data['corrections'] = this.corrections.toJson();
    }
    return data;
  }
}

class Corrections {
  Correction correction;

  Corrections({this.correction});

  Corrections.fromJson(Map<String, dynamic> json) {
    correction = json['correction'] != null
        ? new Correction.fromJson(json['correction'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.correction != null) {
      data['correction'] = this.correction.toJson();
    }
    return data;
  }
}

class Correction {
  Artist artist;
  Attr attr;

  Correction({this.artist, this.attr});

  Correction.fromJson(Map<String, dynamic> json) {
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
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

class Attr {
  String index;

  Attr({this.index});

  Attr.fromJson(Map<String, dynamic> json) {
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['index'] = this.index;
    return data;
  }
}
