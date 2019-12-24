part of models;

class Tag extends BaseModel {
  final String name;
  final String url;

  Tag(this.name, this.url);

  Tag.fromMap(Map map) :
    name = map['name'],
    url = map['url'];

  @override
  Map toMap() => {
    'name': name,
    'url': url
  };

  static List<Tag> listFromMapList(List<Map> maps) => 
    maps.map((m) => Tag.fromMap(m)).toList();
}