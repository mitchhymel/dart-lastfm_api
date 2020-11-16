class AlbumGetTopTags {
  Toptags toptags;

  AlbumGetTopTags({this.toptags});

  AlbumGetTopTags.fromJson(Map<String, dynamic> json) {
    toptags =
        json['toptags'] != null ? new Toptags.fromJson(json['toptags']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.toptags != null) {
      data['toptags'] = this.toptags.toJson();
    }
    return data;
  }
}

class Toptags {
  List<Tag> tag;
  Attr attr;

  Toptags({this.tag, this.attr});

  Toptags.fromJson(Map<String, dynamic> json) {
    if (json['tag'] != null) {
      tag = new List<Tag>();
      json['tag'].forEach((v) {
        tag.add(new Tag.fromJson(v));
      });
    }
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tag != null) {
      data['tag'] = this.tag.map((v) => v.toJson()).toList();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    return data;
  }
}

class AlbumGetTopTagsTag {
  int count;
  String name;
  String url;

  AlbumGetTopTagsTag({this.count, this.name, this.url});

  AlbumGetTopTagsTag.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class AlbumGetTopTagsAttr {
  String artist;
  String album;

  AlbumGetTopTagsAttr({this.artist, this.album});

  AlbumGetTopTagsAttr.fromJson(Map<String, dynamic> json) {
    artist = json['artist'];
    album = json['album'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['artist'] = this.artist;
    data['album'] = this.album;
    return data;
  }
}
