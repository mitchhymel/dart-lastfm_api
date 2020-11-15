part of models;

class Tag {
  String name;
  String count;
  String url;

  Tag({this.name, this.count, this.url});

  @override
  String toString() => jsonEncode(toJson());

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

  static List<Tag> listFromMapList(List<dynamic> maps) =>
      maps.map((m) => Tag.fromJson(m)).toList();

  static List<Tag> fromLastFmResponse(LastFmResponse response) {
    List<Tag> tags = [];
    List maps = response.data['toptags']['tag'];
    maps.forEach((element) {
      tags.add(Tag.fromJson(element));
    });

    return tags;
  }
}