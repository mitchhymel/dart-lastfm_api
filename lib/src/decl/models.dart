import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';

int _stringToInt(String number) => number == null ? null : int.parse(number);
String _stringFromInt(int number) => number?.toString();

@JsonSerializable()
class LastFmResponseData {
  
  final Track track;
  final Tracks tracks;
  @JsonKey(name: 'toptracks')
  final Tracks topTracks;

  final Artist artist;
  final Artists artists;
  @JsonKey(name: 'topartists')
  final Artists topArtists;
  @JsonKey(name: 'similarartists')
  final Similar similarArtists;

  final Album album;
  final Albums albums;
  @JsonKey(name: 'topalbums')
  final Albums topAlbums;

  final Tag tag;
  final Tags tags;
  @JsonKey(name: 'toptags')
  final Tags topTags;

  final Results results;
  final Corrections corrections;
  @JsonKey(name: 'weeklychartlist')
  final WeeklyChartList weeklyChartList;
  LastFmResponseData({
    this.album,
    this.albums,
    this.topAlbums,
    this.artist,
    this.artists,
    this.topArtists,
    this.similarArtists,
    this.tag,
    this.tags,
    this.topTags,
    this.track,
    this.tracks,
    this.topTracks,
    this.results,
    this.corrections,
    this.weeklyChartList,
  });

  factory LastFmResponseData.fromJson(Map<String, dynamic> json) =>
    _$LastFmResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$LastFmResponseDataToJson(this);
}

@JsonSerializable()
class AlbumGetInfoResponse {
  final Album album;
  AlbumGetInfoResponse({this.album});
  factory AlbumGetInfoResponse.fromJson(Map<String, dynamic> json) =>
    _$AlbumGetInfoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumGetInfoResponseToJson(this);
}

@JsonSerializable()
class AlbumGetTagsResponse {
  final Tags tags;
  AlbumGetTagsResponse({this.tags});
  factory AlbumGetTagsResponse.fromJson(Map<String, dynamic> json) =>
    _$AlbumGetTagsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumGetTagsResponseToJson(this);
}

@JsonSerializable()
class AlbumGetTopTagsResponse {
  @JsonKey(name: 'toptags')
  final Tags tags;
  AlbumGetTopTagsResponse({this.tags});
  factory AlbumGetTopTagsResponse.fromJson(Map<String, dynamic> json) =>
    _$AlbumGetTopTagsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumGetTopTagsResponseToJson(this);
}

@JsonSerializable()
class AlbumSearchResponse {
  final Results results;
  AlbumSearchResponse({this.results});
  factory AlbumSearchResponse.fromJson(Map<String, dynamic> json) =>
    _$AlbumSearchResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumSearchResponseToJson(this);
}

@JsonSerializable() 
class ArtistGetCorrectionsResponse {
  final Corrections corrections;
  ArtistGetCorrectionsResponse({this.corrections});
  factory ArtistGetCorrectionsResponse.fromJson(Map<String, dynamic> json) =>
    _$ArtistGetCorrectionsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistGetCorrectionsResponseToJson(this);
}

@JsonSerializable() 
class ArtistGetInfoResponse {
  final Artist artist;
  ArtistGetInfoResponse({
    this.artist
  });
  factory ArtistGetInfoResponse.fromJson(Map<String, dynamic> json) =>
    _$ArtistGetInfoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistGetInfoResponseToJson(this);
}

@JsonSerializable() 
class ArtistGetSimilarResponse {
  @JsonKey(name: 'similarartists')
  final Similar similar;
  ArtistGetSimilarResponse({
    this.similar
  });
  factory ArtistGetSimilarResponse.fromJson(Map<String, dynamic> json) =>
    _$ArtistGetSimilarResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistGetSimilarResponseToJson(this);
}

@JsonSerializable()
class ArtistGetTagsResponse {
  final Tags tags;
  ArtistGetTagsResponse({this.tags});
  factory ArtistGetTagsResponse.fromJson(Map<String, dynamic> json) =>
    _$ArtistGetTagsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistGetTagsResponseToJson(this);
}

@JsonSerializable()
class ArtistGetTopAlbumsResponse {
  @JsonKey(name: 'topalbums')
  final Albums topAlbums;
  ArtistGetTopAlbumsResponse({this.topAlbums});
  factory ArtistGetTopAlbumsResponse.fromJson(Map<String, dynamic> json) =>
    _$ArtistGetTopAlbumsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistGetTopAlbumsResponseToJson(this);
}

@JsonSerializable()
class ArtistGetTopTagsResponse {
  @JsonKey(name: 'toptags')
  final Tags topTags;
  ArtistGetTopTagsResponse({this.topTags});
  factory ArtistGetTopTagsResponse.fromJson(Map<String, dynamic> json) =>
    _$ArtistGetTopTagsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistGetTopTagsResponseToJson(this);
}

@JsonSerializable()
class ArtistGetTopTracksResponse {
  @JsonKey(name: 'toptracks')
  final Tracks topTracks;
  ArtistGetTopTracksResponse({this.topTracks});
  factory ArtistGetTopTracksResponse.fromJson(Map<String, dynamic> json) =>
    _$ArtistGetTopTracksResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistGetTopTracksResponseToJson(this);
}

@JsonSerializable()
class ArtistSearchResponse {
  final Results results;
  ArtistSearchResponse({this.results});
  factory ArtistSearchResponse.fromJson(Map<String, dynamic> json) =>
    _$ArtistSearchResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistSearchResponseToJson(this);
}

@JsonSerializable()
class ChartGetTopArtistsResponse {
  final Artists artists;
  ChartGetTopArtistsResponse({this.artists});
  factory ChartGetTopArtistsResponse.fromJson(Map<String, dynamic> json) =>
    _$ChartGetTopArtistsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChartGetTopArtistsResponseToJson(this);
}

@JsonSerializable()
class ChartGetTopTagsResponse {
  final Tags tags;
  ChartGetTopTagsResponse({this.tags});
  factory ChartGetTopTagsResponse.fromJson(Map<String, dynamic> json) =>
    _$ChartGetTopTagsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChartGetTopTagsResponseToJson(this);
}

@JsonSerializable()
class ChartGetTopTracksResponse {
  final Tracks tracks;
  ChartGetTopTracksResponse({this.tracks});
  factory ChartGetTopTracksResponse.fromJson(Map<String, dynamic> json) =>
    _$ChartGetTopTracksResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChartGetTopTracksResponseToJson(this);
}

@JsonSerializable()
class LibraryGetArtistsResponse {
  final Artists artists;
  LibraryGetArtistsResponse({this.artists});
  factory LibraryGetArtistsResponse.fromJson(Map<String, dynamic> json) =>
    _$LibraryGetArtistsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LibraryGetArtistsResponseToJson(this);
}

@JsonSerializable()
class TagGetInfoResponse {
  final Tag tag;
  TagGetInfoResponse({this.tag});
  factory TagGetInfoResponse.fromJson(Map<String, dynamic> json) =>
    _$TagGetInfoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TagGetInfoResponseToJson(this);
}

@JsonSerializable()
class TagGetTopAlbumsResponse {
  @JsonKey('albums')
  final Albums topAlbums;
  TagGetTopAlbumsResponse({this.topAlbums});
  factory TagGetTopAlbumsResponse.fromJson(Map<String, dynamic> json) =>
    _$TagGetTopAlbumsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TagGetTopAlbumsResponseToJson(this);
}

@JsonSerializable()
class TagGetTopArtistsResponse {
  @JsonKey(name: 'topartists')
  final Artists topArtists;
  TagGetTopArtistsResponse({this.topArtists});
  factory TagGetTopArtistsResponse.fromJson(Map<String, dynamic> json) =>
    _$TagGetTopArtistsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TagGetTopArtistsResponseToJson(this);
}

@JsonSerializable()
class TagGetTopTagsResponse {
  @JsonKey(name: 'toptags')
  final Tags topTags;
  TagGetTopTagsResponse({this.topTags});
  factory TagGetTopTagsResponse.fromJson(Map<String, dynamic> json) =>
    _$TagGetTopTagsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TagGetTopTagsResponseToJson(this);
}

@JsonSerializable()
class TagGetTopTracksResponse {
  @JsonKey(name: 'tracks')
  final Tracks topTracks;
  TagGetTopTracksResponse({this.topTracks});
  factory TagGetTopTracksResponse.fromJson(Map<String, dynamic> json) =>
    _$TagGetTopTracksResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TagGetTopTracksResponseToJson(this);
}

@JsonSerializable()
class TagGetWeeklyChartListResponse {
  @JsonKey(name: 'weeklychartlist')
  final WeeklyChartList weeklyChartList;
  TagGetWeeklyChartListResponse({this.weeklyChartList});
  factory TagGetWeeklyChartListResponse.fromJson(Map<String, dynamic> json) =>
    _$TagGetWeeklyChartListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$TagGetWeeklyChartListResponseToJson(this);
}



//
// shared models below
//



@JsonSerializable()
class Corrections {
  final Correction correction;
  Corrections({this.correction});
  factory Corrections.fromJson(Map<String, dynamic> json) =>
    _$CorrectionsFromJson(json);
  Map<String, dynamic> toJson() => _$CorrectionsToJson(this);
}

@JsonSerializable()
class Correction {
  final Artist artist;
  @JsonKey(name: '@attr')
  final Attr attr;
  Correction({
    this.artist,
    this.attr,
  });
  factory Correction.fromJson(Map<String, dynamic> json) =>
    _$CorrectionFromJson(json);
  Map<String, dynamic> toJson() => _$CorrectionToJson(this);
}

@JsonSerializable()
class Results {
  @JsonKey(name: 'opensearch:Query')
  final OpenSearchQuery query;
  @JsonKey(name: 'opensearch:totalResults',
    fromJson: _stringToInt, toJson: _stringFromInt)
  final int totalResults;
  @JsonKey(name: 'opensearch:startIndex',
    fromJson: _stringToInt, toJson: _stringFromInt)
  final int startIndex;
  @JsonKey(name: 'opensearch:itemsPerPage',
    fromJson: _stringToInt, toJson: _stringFromInt)
  final int itemsPerPage;
  @JsonKey(name: 'albummatches')
  final Albums albums;
  @JsonKey(name: 'artistmatches')
  final Artists artists;
  @JsonKey(name: '@attr')
  final Attr attr;
  Results({
    this.query,
    this.totalResults,
    this.startIndex,
    this.itemsPerPage,
    this.albums,
    this.attr,
    this.artists,
  });
  factory Results.fromJson(Map<String, dynamic> json) =>
    _$ResultsFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}

@JsonSerializable()
class OpenSearchQuery {
  @JsonKey(name: '#text')
  final String text;
  final String role;
  final String searchTerms;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int startPage;
  OpenSearchQuery({
    this.text,
    this.role,
    this.searchTerms,
    this.startPage
  });
  factory OpenSearchQuery.fromJson(Map<String, dynamic> json) =>
    _$OpenSearchQueryFromJson(json);
  Map<String, dynamic> toJson() => _$OpenSearchQueryToJson(this);
}

@JsonSerializable()
class Albums {
  @JsonKey(name: 'album')
  final List<Album> albums;
  @JsonKey(name: '@attr')
  final Attr attr;
  Albums({
    this.albums,
    this.attr,
  });
  factory Albums.fromJson(Map<String, dynamic> json) =>
    _$AlbumsFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumsToJson(this);
}

@JsonSerializable()
class Album {
  final String name;
  final String artist;
  final String mbid;
  final String url;
  final List<LastFmImage> image;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int listeners;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int playcount;
  final Tracks tracks;
  final Tags tags;
  final Wiki wiki;
  Album({
    this.name,
    this.artist,
    this.mbid,
    this.url,
    this.image,
    this.listeners,
    this.playcount,
    this.tracks,
    this.tags,
    this.wiki
  });
  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}

@JsonSerializable()
class LastFmImage {
  @JsonKey(name: '#text')
  final String text;
  final String size;
  LastFmImage({this.text, this.size});
  factory LastFmImage.fromJson(Map<String, dynamic> json) =>
    _$LastFmImageFromJson(json);
  Map<String, dynamic> toJson() => _$LastFmImageToJson(this);
}

@JsonSerializable() 
class Tracks {
  @JsonKey(name: 'track')
  final List<Track> tracks;
  @JsonKey(name: '@attr')
  final Attr attr;
  Tracks({
    this.tracks,
    this.attr,
  });
  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
  Map<String, dynamic> toJson() => _$TracksToJson(this);
}

@JsonSerializable()
class Track {
  final String name;
  final String url;
  final String duration;
  @JsonKey(name: '@attr')
  final Attr attr;
  final Streamable streamable;
  final Artist artist;
  Track({
    this.name,
    this.url,
    this.duration,
    this.attr,
    this.streamable,
    this.artist
  });
  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
  Map<String, dynamic> toJson() => _$TrackToJson(this);
}

@JsonSerializable()
class Attr {
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int rank;
  @JsonKey(name: 'for')
  final String forStr;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int index;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int page;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int perPage;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int totalPages;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int total;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int offset;
  @JsonKey(name: 'num_res', fromJson: _stringToInt, toJson: _stringFromInt)
  final int numRes;
  final String user;
  final String tag;
  final String artist;
  final String album;
  Attr({
    this.rank,
    this.artist,
    this.album,
    this.forStr,
    this.index,
    this.page,
    this.perPage,
    this.totalPages,
    this.total,
    this.user,
    this.tag,
    this.offset,
    this.numRes,
  });
  factory Attr.fromJson(Map<String, dynamic> json) => _$AttrFromJson(json);
  Map<String, dynamic> toJson() => _$AttrToJson(this);
}

@JsonSerializable()
class Streamable {
  @JsonKey(name: '#text')
  final String text;
  final String fulltrack;
  Streamable({
    this.text,
    this.fulltrack,
  });
  factory Streamable.fromJson(Map<String, dynamic> json) => 
    _$StreamableFromJson(json);
  Map<String, dynamic> toJson() => _$StreamableToJson(this);
}

@JsonSerializable()
class Artists {
  @JsonKey(name: 'artist')
  final List<Artist> artists;
  @JsonKey(name: '@attr')
  final Attr attr;
  Artists({
    this.artists,
    this.attr,
  });
  factory Artists.fromJson(Map<String, dynamic> json) => 
    _$ArtistsFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistsToJson(this);
}

@JsonSerializable()
class Artist {
  final String name;
  final String mbid;
  final String url;
  final List<LastFmImage> image;
  final String streamable;
  final String ontour;
  final Stats stats;
  final Similar similar;
  final Tags tags;
  @JsonKey(name: 'bio')
  final Wiki bio;
  final String match;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int listeners;

  Artist({
    this.name,
    this.mbid,
    this.url,
    this.image,
    this.streamable,
    this.ontour,
    this.stats,
    this.similar,
    this.tags,
    this.bio,
    this.match,
    this.listeners,
  });
  factory Artist.fromJson(Map<String, dynamic> json) =>
    _$ArtistFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}

@JsonSerializable()
class Tags {
  @JsonKey(name: 'tag')
  final List<Tag> tags;
  @JsonKey(name: '@attr')
  final Attr attr;
  Tags({
    this.tags,
    this.attr,
  });
  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);
  Map<String, dynamic> toJson() => _$TagsToJson(this);
}

@JsonSerializable()
class Tag {
  final int count;
  final String name;
  final String url;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int total;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int reach;
  final String taggings;
  final String streamable;
  final Wiki wiki;
  Tag({
    this.count,
    this.name,
    this.url,
    this.total,
    this.reach,
    this.taggings,
    this.streamable,
    this.wiki,
  });
  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
  Map<String, dynamic> toJson() => _$TagToJson(this);
}

@JsonSerializable()
class Wiki {
  final Links links;
  final String published;
  final String summary;
  final String content;
  Wiki({
    this.links,
    this.published,
    this.summary,
    this.content,
  });
  factory Wiki.fromJson(Map<String, dynamic> json) => _$WikiFromJson(json);
  Map<String, dynamic> toJson() => _$WikiToJson(this);
}

@JsonSerializable()
class UserSession {
  final String userName;
  final String key;
  final int subscriber;
  UserSession({
    this.userName,
    this.key,
    this.subscriber
  });
  factory UserSession.fromJson(Map<String, dynamic> json) => 
    _$UserSessionFromJson(json);
  Map<String, dynamic> toJson() => _$UserSessionToJson(this);
}

@JsonSerializable()
class Stats {
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int listeners;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int playcount;
  Stats({
    this.listeners,
    this.playcount
  });
  factory Stats.fromJson(Map<String, dynamic> json) => 
    _$StatsFromJson(json);
  Map<String, dynamic> toJson() => _$StatsToJson(this);
}

@JsonSerializable()
class Similar {
  @JsonKey(name: 'artist')
  final List<Artist> artists;
  @JsonKey(name: '@attr')
  final Attr attr;
  Similar({
    this.artists,
    this.attr,
  });
  factory Similar.fromJson(Map<String, dynamic> json) => 
    _$SimilarFromJson(json);
  Map<String, dynamic> toJson() => _$SimilarToJson(this);
}

@JsonSerializable()
class Links {
  final Link link;
  Links({
    this.link
  });
  factory Links.fromJson(Map<String, dynamic> json) => 
    _$LinksFromJson(json);
  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Link {
  @JsonKey(name: '#text')
  final String text;
  final String rel;
  final String href;
  Link({
    this.text,
    this.rel,
    this.href,
  });
  factory Link.fromJson(Map<String, dynamic> json) => 
    _$LinkFromJson(json);
  Map<String, dynamic> toJson() => _$LinkToJson(this);
}

@JsonSerializable()
class WeeklyChartList {
  @JsonKey(name: 'chart')
  final List<Chart> charts;
  @JsonKey(name: '@attr')
  final Attr attr;
  WeeklyChartList({
    this.charts,
    this.attr
  });
  factory WeeklyChartList.fromJson(Map<String, dynamic> json) => 
    _$WeeklyChartListFromJson(json);
  Map<String, dynamic> toJson() => _$WeeklyChartListToJson(this);
}

@JsonSerializable()
class Chart {
  @JsonKey(name: '#text')
  final String text;
  final String to;
  final String from;
  Chart({
    this.text,
    this.to,
    this.from
  });
  factory Chart.fromJson(Map<String, dynamic> json) => 
    _$ChartFromJson(json);
  Map<String, dynamic> toJson() => _$ChartToJson(this);
}