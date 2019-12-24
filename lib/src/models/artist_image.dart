part of models;

class ArtistImage extends BaseModel {
  final String url;
  final String size;

  ArtistImage({this.url, this.size});

  ArtistImage.fromMap(Map map) :
    url = map['#text'],
    size = map['size'];

  @override
  Map toMap() => {
    'url': url,
    'size': size
  };

  static List<ArtistImage> listFromMapList(List<dynamic> maps) =>
     maps.map((m) => ArtistImage.fromMap(m)).toList();
}