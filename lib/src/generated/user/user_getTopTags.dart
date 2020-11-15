class UserGetTopTags {
  Toptags toptags;

  UserGetTopTags({this.toptags});

  UserGetTopTags.fromJson(Map<String, dynamic> json) {
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

class Tag {
  String name;
  String count;
  String url;

  Tag({this.name, this.count, this.url});

  Tag.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    count = json['count'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['count'] = this.count;
    data['url'] = this.url;
    return data;
  }
}

class Attr {
  String user;

  Attr({this.user});

  Attr.fromJson(Map<String, dynamic> json) {
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    return data;
  }
}
