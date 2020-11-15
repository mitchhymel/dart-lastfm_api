part of models;

class ArtistInfo extends BaseModel {
  final String name;
  final String mbid;
  final String url;
  final List<ArtistImage> images;
  final bool streamable;
  final bool onTour;
  final ArtistStats stats;
  final List<SimilarArtist> similar;
  final List<Tag> tags;
  final ArtistBio bio;

  ArtistInfo({this.name, this.mbid, this.url, this.images, this.streamable,
    this.onTour, this.stats, this.similar, this.tags, this.bio});

  ArtistInfo.fromMap(Map map) :
    name = map[NAME],
    mbid = map[MBID],
    url = map[URL],
    images = ArtistImage.listFromMapList(map[IMAGE]),
    streamable = LastFmHelpers.parseBoolFromStringOrBool(map, STREAMABLE),
    onTour = LastFmHelpers.parseBoolFromStringOrBool(map, ONTOUR),
    stats = ArtistStats.fromMap(map[STATS]),
    similar = SimilarArtist.listFromMapList(map[SIMILAR][ARTIST]),
    tags = Tag.listFromMapList(map[TAGS][TAG]),
    bio = ArtistBio.fromMap(map[BIO]);
  
  @override
  Map toMap() => {
    NAME: name,
    MBID: mbid,
    URL: url,
    IMAGE: BaseModel.toMapList(images),
    STREAMABLE: streamable,
    ONTOUR: onTour,
    STATS: stats.toMap(),
    SIMILAR: BaseModel.toMapList(similar),
    TAGS: tags,
    BIO: bio.toMap(),
  };

  static ArtistInfo fromLastFmResponse(LastFmResponse response) {
    if (response.error != null) {
        print(response.error);
        return null;
    }

    return ArtistInfo.fromMap(response.data[ARTIST]);
  }
}

