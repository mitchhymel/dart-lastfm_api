class TagGetTopTags {
  Toptags toptags;

  TagGetTopTags({this.toptags});

  TagGetTopTags.fromJson(Map<String, dynamic> json) {
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
  Attr attr;
  List<Tag> tag;

  Toptags({this.attr, this.tag});

  Toptags.fromJson(Map<String, dynamic> json) {
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
    if (json['tag'] != null) {
      tag = new List<Tag>();
      json['tag'].forEach((v) {
        tag.add(new Tag.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    if (this.tag != null) {
      data['tag'] = this.tag.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Attr {
  int offset;
  int numRes;
  int total;

  Attr({this.offset, this.numRes, this.total});

  Attr.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    numRes = json['num_res'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['offset'] = this.offset;
    data['num_res'] = this.numRes;
    data['total'] = this.total;
    return data;
  }
}

class Tag {
  String name;
  int count;
  int reach;

  Tag({this.name, this.count, this.reach});

  Tag.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    count = json['count'];
    reach = json['reach'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['count'] = this.count;
    data['reach'] = this.reach;
    return data;
  }
}
