part of models;

class SimilarArtist extends BaseModel {
  final String name;
  final String mbid;
  final double match;
  final String url;
  final bool streamable;
  final List<ArtistImage> images;
  
  SimilarArtist({this.name, this.mbid, this.match, this.url, 
    this.streamable, this.images});

  SimilarArtist.fromMap(Map map) :
    name = map['name'],
    mbid = map['mbid'],
    match = double.parse(map['match']),
    url = map['url'],
    streamable = int.parse(map['streamable']) == 1,
    images = ArtistImage.listFromMapList(map['image']);

  @override
  Map toMap() => {
    'name': name,
    'mbid': mbid,
    'match': match,
    'url': url,
    'streamable': streamable,
    'image': images.map((i) => i.toMap()).toList()
  };

  static List<SimilarArtist> listFromMapList(List<dynamic> maps) =>
    maps.map((m) => SimilarArtist.fromMap(m)).toList();

  static List<SimilarArtist> fromLastFmResponse(LastFmResponse response) {
    if (response.error != null) {
        print(response.error);
        return [];
    }

    Map simArtist = response.data['similarartists'];
    List<dynamic> maps = simArtist['artist'];
    return listFromMapList(maps);
  }
}