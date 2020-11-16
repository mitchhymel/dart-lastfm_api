class AlbumGetTags {
  Tags tags;

  AlbumGetTags({this.tags});

  AlbumGetTags.fromJson(Map<String, dynamic> json) {
    tags = json['tags'] != null ? new Tags.fromJson(json['tags']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tags != null) {
      data['tags'] = this.tags.toJson();
    }
    return data;
  }
}

class AlbumGetTagsTags {
  List<Tag> tag;
  AlbumGetTagsAttr attr;

  AlbumGetTagsTags({this.tag, this.attr});

  AlbumGetTagsTags.fromJson(Map<String, dynamic> json) {
    if (json['tag'] != null) {
      tag = new List<Tag>();
      json['tag'].forEach((v) {
        tag.add(new Tag.fromJson(v));
      });
    }
    attr = json['@attr'] != null ? new AlbumGetTagsAttr.fromJson(json['@attr']) : null;
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

class AlbumGetTagTag {
  String name;
  String url;

  AlbumGetTagTag({this.name, this.url});

  AlbumGetTagTag.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class AlbumGetTagsAttr {
  String artist;
  String album;

  AlbumGetTagsAttr({this.artist, this.album});

  AlbumGetTagsAttr.fromJson(Map<String, dynamic> json) {
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
