part of models;

class Tag extends BaseModel {
  final String name;
  final String url;

  Tag(this.name, this.url);

  Tag.fromMap(Map map) :
    name = map[NAME],
    url = map[URL];

  @override
  Map toMap() => {
    NAME: name,
    URL: url
  };

  static List<Tag> listFromMapList(List<dynamic> maps) => 
    maps.map((m) => Tag.fromMap(m)).toList();
}