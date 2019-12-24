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
    name = map[NAME],
    mbid = map[MBID],
    match = LastFmHelpers.parseDoubleIfContainsKey(map, MATCH),
    url = map[URL],
    streamable = LastFmHelpers.parseBoolIfContainsKey(map, STREAMABLE),
    images = ArtistImage.listFromMapList(map[IMAGE]);

  @override
  Map toMap() => {
    NAME: name,
    MBID: mbid,
    MATCH: match,
    URL: url,
    STREAMABLE: streamable,
    IMAGE: BaseModel.toMapList(images)
  };

  static List<SimilarArtist> listFromMapList(List<dynamic> maps) =>
    maps.map((m) => SimilarArtist.fromMap(m)).toList();

  static List<SimilarArtist> fromLastFmResponse(LastFmResponse response) {
    if (response.error != null) {
        print(response.error);
        return [];
    }

    Map simArtist = response.data[SIMILARARTISTS];
    List<dynamic> maps = simArtist[ARTIST];
    return listFromMapList(maps);
  }
}