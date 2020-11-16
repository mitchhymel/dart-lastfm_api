import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';

int _stringToInt(String number) => number == null ? null : int.parse(number);
String _stringFromInt(int number) => number?.toString();

@JsonSerializable(includeIfNull: false)
class LastFmResponseData {

  final UserSession session;

  final Users friends;
  final User user;
  
  final Track track;
  final Tracks tracks;
  @JsonKey(name: 'toptracks')
  final Tracks topTracks;
  @JsonKey(name: 'similartracks')
  final Tracks similarTracks;
  @JsonKey(name: 'lovedtracks')
  final Tracks lovedTracks;
  @JsonKey(name: 'recenttracks')
  final Tracks recentTracks;
  @JsonKey(name: 'weeklytrackchart')
  final Tracks weeklyTrackChart;

  @JsonKey(name: 'taggings')
  final Taggings taggings;

  final Artist artist;
  final Artists artists;
  @JsonKey(name: 'topartists')
  final Artists topArtists;
  @JsonKey(name: 'similarartists')
  final Similar similarArtists;
  @JsonKey(name: 'weeklyartistchart')
  final Artists weeklyArtistChart;

  final Album album;
  final Albums albums;
  @JsonKey(name: 'topalbums')
  final Albums topAlbums;
  @JsonKey(name: 'weeklyalbumchart')
  final Albums weeklyAlbumChart;

  final Tag tag;
  final Tags tags;
  @JsonKey(name: 'toptags')
  final Tags topTags;

  final Results results;
  final Corrections corrections;
  @JsonKey(name: 'weeklychartlist')
  final WeeklyChartList weeklyChartList;

  LastFmResponseData({
    this.friends,
    this.user,
    this.session,
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
    this.similarTracks,
    this.lovedTracks,
    this.recentTracks,
    this.results,
    this.corrections,
    this.taggings,
    this.weeklyChartList,
    this.weeklyAlbumChart,
    this.weeklyArtistChart,
    this.weeklyTrackChart,
  });

  factory LastFmResponseData.fromJson(Map<String, dynamic> json) =>
    _$LastFmResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$LastFmResponseDataToJson(this);
}

//
// shared models below
//



@JsonSerializable(includeIfNull: false)
class Corrections {
  final Correction correction;
  Corrections({this.correction});
  factory Corrections.fromJson(Map<String, dynamic> json) =>
    _$CorrectionsFromJson(json);
  Map<String, dynamic> toJson() => _$CorrectionsToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Correction {
  final Track track;
  final Artist artist;
  @JsonKey(name: '@attr')
  final Attr attr;
  Correction({
    this.track,
    this.artist,
    this.attr,
  });
  factory Correction.fromJson(Map<String, dynamic> json) =>
    _$CorrectionFromJson(json);
  Map<String, dynamic> toJson() => _$CorrectionToJson(this);
}

@JsonSerializable(includeIfNull: false)
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
  @JsonKey(name: 'trackmatches')
  final Tracks tracks;
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
    this.tracks,
  });
  factory Results.fromJson(Map<String, dynamic> json) =>
    _$ResultsFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
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
  @JsonKey(name: '@attr')
  final Attr attr;
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
    this.wiki,
    this.attr,
  });
  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}

@JsonSerializable(includeIfNull: false)
class LastFmImage {
  @JsonKey(name: '#text')
  final String text;
  final String size;
  LastFmImage({this.text, this.size});
  factory LastFmImage.fromJson(Map<String, dynamic> json) =>
    _$LastFmImageFromJson(json);
  Map<String, dynamic> toJson() => _$LastFmImageToJson(this);
}

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
class Track {
  final String name;
  final String mbid;
  final String url;
  final int duration;
  @JsonKey(name: '@attr')
  final Attr attr;
  final Streamable streamable;
  final Artist artist;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int listeners;
  @JsonKey(name: 'playcount', fromJson: _stringToInt, toJson: _stringFromInt)
  final int playcount;
  final Album album;
  @JsonKey(name: 'toptags')
  final Tags topTags;
  final LastFmDate date;
  Track({
    this.name,
    this.mbid,
    this.url,
    this.duration,
    this.attr,
    this.streamable,
    this.artist,
    this.listeners,
    this.playcount,
    this.album,
    this.topTags,
    this.date,
  });
  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
  Map<String, dynamic> toJson() => _$TrackToJson(this);
}

@JsonSerializable(includeIfNull: false)
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
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int position;
  @JsonKey(name: 'num_res', fromJson: _stringToInt, toJson: _stringFromInt)
  final int numRes;
  final String user;
  final String tag;
  final String artist;
  final String track;
  final String album;
  final String artistcorrected;
  final String trackcorrected;
  @JsonKey(name: 'nowplaying')
  final String nowPlaying;
  final String from;
  final String to;
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
    this.artistcorrected,
    this.trackcorrected,
    this.position,
    this.track,
    this.nowPlaying,
    this.from,
    this.to,
  });
  factory Attr.fromJson(Map<String, dynamic> json) => _$AttrFromJson(json);
  Map<String, dynamic> toJson() => _$AttrToJson(this);
}

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
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
  @JsonKey(name: 'playcount', fromJson: _stringToInt, toJson: _stringFromInt)
  final int playCount;
  @JsonKey(name: '@attr')
  final Attr attr;

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
    this.playCount,
    this.attr,
  });
  factory Artist.fromJson(Map<String, dynamic> json) =>
    _$ArtistFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
class Tag {
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
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

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
class Links {
  final Link link;
  Links({
    this.link
  });
  factory Links.fromJson(Map<String, dynamic> json) => 
    _$LinksFromJson(json);
  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
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

@JsonSerializable(includeIfNull: false)
class Users {
  @JsonKey(name: 'user')
  final List<User> users;
  @JsonKey(name: '@attr')
  final Attr attr;
  Users({
    this.users,
    this.attr,
  });
  factory Users.fromJson(Map<String, dynamic> json) => 
    _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}

@JsonSerializable(includeIfNull: false)
class User {

  final String playlists;
  @JsonKey(name: 'playcount', fromJson: _stringToInt, toJson: _stringFromInt)
  final int playCount;
  final String subscriber;
  final String name;
  final String country;
  @JsonKey(name: 'image')
  final List<LastFmImage> images;
  final Registered registered;
  final String url;
  final String realname;
  final String bootstrap;
  final String type;
  final String gender;
  @JsonKey(fromJson: _stringToInt, toJson: _stringFromInt)
  final int age;
  
  User({
    this.playlists,
    this.playCount,
    this.subscriber,
    this.name,
    this.country,
    this.images,
    this.registered,
    this.url,
    this.realname,
    this.bootstrap,
    this.type,
    this.gender,
    this.age,
  });
  factory User.fromJson(Map<String, dynamic> json) => 
    _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Registered {
  final String unixtime;
  @JsonKey(name: '#text')
  final String text;
  Registered({
    this.unixtime,
    this.text,
  });
  factory Registered.fromJson(Map<String, dynamic> json) => 
    _$RegisteredFromJson(json);
  Map<String, dynamic> toJson() => _$RegisteredToJson(this);
}

@JsonSerializable(includeIfNull: false)
class LastFmDate {
  final String uts;
  @JsonKey(name: '#text')
  final String text;
  LastFmDate({
    this.uts,
    this.text,
  });
  factory LastFmDate.fromJson(Map<String, dynamic> json) => 
    _$LastFmDateFromJson(json);
  Map<String, dynamic> toJson() => _$LastFmDateToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Taggings {
  final Tracks tracks;
  @JsonKey(name: '@attr')
  final Attr attr;
  Taggings({
    this.tracks,
    this.attr,
  });
  factory Taggings.fromJson(Map<String, dynamic> json) => 
    _$TaggingsFromJson(json);
  Map<String, dynamic> toJson() => _$TaggingsToJson(this);
}