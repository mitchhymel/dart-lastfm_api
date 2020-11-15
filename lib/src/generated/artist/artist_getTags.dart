class ArtistGetTags {
  Tags tags;

  ArtistGetTags({this.tags});

  ArtistGetTags.fromJson(Map<String, dynamic> json) {
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

class Tags {
  String text;
  Attr attr;

  Tags({this.text, this.attr});

  Tags.fromJson(Map<String, dynamic> json) {
    text = json['#text'];
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['#text'] = this.text;
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    return data;
  }
}

class Attr {
  String artist;

  Attr({this.artist});

  Attr.fromJson(Map<String, dynamic> json) {
    artist = json['artist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['artist'] = this.artist;
    return data;
  }
}
