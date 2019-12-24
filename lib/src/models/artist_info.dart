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
    name = map['name'],
    mbid = map['mbid'],
    url = map['url'],
    images = ArtistImage.listFromMapList(map['image']),
    streamable = LastFmHelpers.parseBoolFromString(map['streamable']),
    onTour = LastFmHelpers.parseBoolFromString(map['ontour']),
    stats = ArtistStats.fromMap(map['stats']),
    similar = SimilarArtist.listFromMapList(map['similar']),
    tags = Tag.listFromMapList(map['tags']['tag']),
    bio = ArtistBio.fromMap(map['bio']);
  
  @override
  Map toMap() => {
    'name': name,
    'mbid': mbid,
    'url': url,
    'images': images,
    'streamable': streamable,
    'onTour': onTour,
    'stats': stats,
    'similar': similar,
    'tags': tags,
    'bio': bio,
  };

  static ArtistInfo fromLastFmResponse(LastFmResponse response) {
    if (response.error != null) {
        print(response.error);
        return null;
    }

    return ArtistInfo.fromMap(response.data['artist']);
  }
}

