class TagGetInfo {
  Tag tag;

  TagGetInfo({this.tag});

  TagGetInfo.fromJson(Map<String, dynamic> json) {
    tag = json['tag'] != null ? new Tag.fromJson(json['tag']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tag != null) {
      data['tag'] = this.tag.toJson();
    }
    return data;
  }
}

class Tag {
  String name;
  int total;
  int reach;
  Wiki wiki;

  Tag({this.name, this.total, this.reach, this.wiki});

  Tag.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    total = json['total'];
    reach = json['reach'];
    wiki = json['wiki'] != null ? new Wiki.fromJson(json['wiki']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['total'] = this.total;
    data['reach'] = this.reach;
    if (this.wiki != null) {
      data['wiki'] = this.wiki.toJson();
    }
    return data;
  }
}

class Wiki {
  String summary;
  String content;

  Wiki({this.summary, this.content});

  Wiki.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['content'] = this.content;
    return data;
  }
}
