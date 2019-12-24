part of models;

class ArtistImage extends BaseModel {
  final String url;
  final String size;

  ArtistImage({this.url, this.size});

  ArtistImage.fromMap(Map map) :
    url = map[TEXT],
    size = map[SIZE];

  @override
  Map toMap() => {
    URL: url,
    SIZE: size
  };

  static List<ArtistImage> listFromMapList(List<dynamic> maps) =>
     maps.map((m) => ArtistImage.fromMap(m)).toList();
}