import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';

int _stringToInt(String number) => number == null ? null : number == "FIXME" ? 0 : int.parse(number);
String _stringFromInt(int number) => number?.toString();
double _stringToDouble(String number) => number == null ? null : double.parse(number);
String _stringFromDouble(double number) => number?.toString();
bool _stringToBool(String b) => b == null ? null : b == "1" || b == "true";
String _stringFromBool(bool b) => b.toString(); 

int _intFromStringOrInt(dynamic x) => x == null ? null : x is String ? _stringToInt(x) : x is int ? x : null;
bool _boolFromStringOrMap(dynamic x) => x == null ? null : x is String ? _stringToBool(x) : x is Map<String, dynamic> ? _stringToBool(x['fulltrack']) : null;
Artist _artistFromStringOrMap(dynamic x) => x == null ? null : x is String ? Artist(name: x) : x is Map<String, dynamic> ? Artist.fromJson(x) : null;
DateTime _dateTimeFromStringOrInt(dynamic x) => x == null ? null : x is String ? DateTime.fromMillisecondsSinceEpoch(_stringToInt(x) * 1000) : x is int ? DateTime.fromMillisecondsSinceEpoch(x * 1000) : null;

@JsonSerializable(includeIfNull: false)
class LastFmResponseData {

  final UserSession session;

  final Users friends;
  final User user;
  
  final Track track;
  final Tracks tracks;
  final Tracks toptracks;
  final Tracks similartracks;
  final Tracks lovedtracks;
  final Tracks recenttracks;
  final Tracks weeklytrackchart;

  final Taggings taggings;

  final Artist artist;
  final Artists artists;
  final Artists topartists;
  final Artists similarartists;
  final Artists weeklyartistchart;

  final Album album;
  final Albums albums;
  final Albums topalbums;
  final Albums weeklyalbumchart;

  final Tag tag;
  final Tags tags;
  final Tags toptags;

  final Results results;
  final Corrections corrections;
  final Charts weeklychartlist;

  LastFmResponseData({
    this.friends,
    this.user,
    this.session,
    this.album,
    this.albums,
    this.topalbums,
    this.artist,
    this.artists,
    this.topartists,
    this.similarartists,
    this.tag,
    this.tags,
    this.toptags,
    this.track,
    this.tracks,
    this.toptracks,
    this.similartracks,
    this.lovedtracks,
    this.recenttracks,
    this.results,
    this.corrections,
    this.taggings,
    this.weeklychartlist,
    this.weeklyalbumchart,
    this.weeklyartistchart,
    this.weeklytrackchart,
  });

  factory LastFmResponseData.fromJson(Map<String, dynamic> json) =>
    _$LastFmResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$LastFmResponseDataToJson(this);
  @override
  String toString() => jsonEncode(toJson);
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
  @override
  String toString() => jsonEncode(toJson);
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
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Results {
  @JsonKey(name: 'opensearch:Query')
  final OpenSearchQuery query;
  @JsonKey(name: 'opensearch:totalResults',
    fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int totalResults;
  @JsonKey(name: 'opensearch:startIndex',
    fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int startIndex;
  @JsonKey(name: 'opensearch:itemsPerPage',
    fromJson: _intFromStringOrInt, toJson: _stringFromInt)
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
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class OpenSearchQuery {
  @JsonKey(name: '#text')
  final String text;
  final String role;
  final String searchTerms;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
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
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Albums {
  @JsonKey(name: 'album')
  final List<Album> items;
  @JsonKey(name: '@attr')
  final Attr attr;
  Albums({
    this.items,
    this.attr,
  });
  factory Albums.fromJson(Map<String, dynamic> json) =>
    _$AlbumsFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumsToJson(this);
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Album {
  final String name;
  @JsonKey(fromJson: _artistFromStringOrMap)
  final Artist artist;
  final String mbid;
  final String url;
  final List<LastFmImage> image;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int listeners;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int playcount;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int userplaycount;
  final Tracks tracks;
  final Tags tags;
  final Wiki wiki;
  @JsonKey(name: '@attr')
  final Attr attr;
  @JsonKey(name: '#text')
  final String text;
  Album({
    this.name,
    this.artist,
    this.mbid,
    this.url,
    this.image,
    this.listeners,
    this.playcount,
    this.userplaycount,
    this.tracks,
    this.tags,
    this.wiki,
    this.attr,
    this.text,
  });
  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
  Map<String, dynamic> toJson() => _$AlbumToJson(this);
  @override
  String toString() => jsonEncode(toJson);
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
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Tracks {
  @JsonKey(name: 'track')
  final List<Track> items;
  @JsonKey(name: '@attr')
  final Attr attr;
  Tracks({
    this.items,
    this.attr,
  });
  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
  Map<String, dynamic> toJson() => _$TracksToJson(this);
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Track {
  final String name;
  final String mbid;
  final String url;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int duration;
  @JsonKey(name: '@attr')
  final Attr attr;
  @JsonKey(fromJson: _boolFromStringOrMap, toJson: _stringFromBool)
  final bool streamable;
  @JsonKey(fromJson: _artistFromStringOrMap)
  final Artist artist;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int listeners;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int playcount;
  final Album album;
  final Tags toptags;
  final LastFmDate date;
  @JsonKey(name: 'image')
  final List<LastFmImage> images;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int userplaycount;
  @JsonKey(fromJson: _boolFromStringOrMap)
  final bool userloved;

  bool get nowPlaying => attr != null && attr.nowplaying;
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
    this.toptags,
    this.date,
    this.images,
    this.userplaycount,
    this.userloved,
  });
  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
  Map<String, dynamic> toJson() => _$TrackToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Attr {
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int rank;
  @JsonKey(name: 'for')
  final String forStr;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int index;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int page;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int perPage;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int totalPages;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int total;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int offset;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int position;
  @JsonKey(name: 'num_res', fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int numRes;
  final String user;
  final String tag;
  final String artist;
  final String track;
  final String album;
  final String artistcorrected;
  final String trackcorrected;
  @JsonKey(fromJson: _boolFromStringOrMap)
  final bool nowplaying;
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
    this.nowplaying,
    this.from,
    this.to,
  });
  factory Attr.fromJson(Map<String, dynamic> json) => _$AttrFromJson(json);
  Map<String, dynamic> toJson() => _$AttrToJson(this);
  @override
  String toString() => jsonEncode(toJson);
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
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Artists {
  @JsonKey(name: 'artist')
  final List<Artist> items;
  @JsonKey(name: '@attr')
  final Attr attr;
  Artists({
    this.items,
    this.attr,
  });
  factory Artists.fromJson(Map<String, dynamic> json) => 
    _$ArtistsFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistsToJson(this);
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Artist {
  final String name;
  final String mbid;
  final String url;
  final List<LastFmImage> image;
  @JsonKey(fromJson: _boolFromStringOrMap)
  final bool streamable;
  @JsonKey(fromJson: _boolFromStringOrMap)
  final bool ontour;
  final Stats stats;
  final Artists similar;
  final Tags tags;
  final Wiki bio;
  @JsonKey(fromJson: _stringToDouble, toJson: _stringFromDouble)
  final double match;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int listeners;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int playcount;
  @JsonKey(name: '@attr')
  final Attr attr;
  @JsonKey(name: '#text')
  final String text;

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
    this.playcount,
    this.attr,
    this.text,
  });
  factory Artist.fromJson(Map<String, dynamic> json) =>
    _$ArtistFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistToJson(this);
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Tags {
  @JsonKey(name: 'tag')
  final List<Tag> items;
  @JsonKey(name: '@attr')
  final Attr attr;
  Tags({
    this.items,
    this.attr,
  });
  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);
  Map<String, dynamic> toJson() => _$TagsToJson(this);
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Tag {
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int count;
  final String name;
  final String url;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int total;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
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
  @override
  String toString() => jsonEncode(toJson);
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
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class UserSession {
  final String userName;
  final String key;
  @JsonKey(fromJson: _boolFromStringOrMap)
  final bool subscriber;
  UserSession({
    this.userName,
    this.key,
    this.subscriber
  });
  factory UserSession.fromJson(Map<String, dynamic> json) => 
    _$UserSessionFromJson(json);
  Map<String, dynamic> toJson() => _$UserSessionToJson(this);
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Stats {
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int listeners;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int playcount;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int userplaycount;
  Stats({
    this.listeners,
    this.playcount,
    this.userplaycount,
  });
  factory Stats.fromJson(Map<String, dynamic> json) => 
    _$StatsFromJson(json);
  Map<String, dynamic> toJson() => _$StatsToJson(this);
  @override
  String toString() => jsonEncode(toJson);
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
  @override
  String toString() => jsonEncode(toJson);
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
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Charts {
  @JsonKey(name: 'chart')
  final List<Chart> items;
  @JsonKey(name: '@attr')
  final Attr attr;
  Charts({
    this.items,
    this.attr
  });
  factory Charts.fromJson(Map<String, dynamic> json) => 
    _$ChartsFromJson(json);
  Map<String, dynamic> toJson() => _$ChartsToJson(this);
  @override
  String toString() => jsonEncode(toJson);
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
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Users {
  @JsonKey(name: 'user')
  final List<User> items;
  @JsonKey(name: '@attr')
  final Attr attr;
  Users({
    this.items,
    this.attr,
  });
  factory Users.fromJson(Map<String, dynamic> json) => 
    _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class User {

  final String playlists;
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int playcount;
  @JsonKey(fromJson: _boolFromStringOrMap)
  final bool subscriber;
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
  @JsonKey(fromJson: _intFromStringOrInt, toJson: _stringFromInt)
  final int age;
  
  User({
    this.playlists,
    this.playcount,
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
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Registered {
  @JsonKey(fromJson: _dateTimeFromStringOrInt)
  final DateTime unixtime;
  Registered({
    this.unixtime,
  });
  factory Registered.fromJson(Map<String, dynamic> json) => 
    _$RegisteredFromJson(json);
  Map<String, dynamic> toJson() => _$RegisteredToJson(this);
  @override
  String toString() => jsonEncode(toJson);
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
  @override
  String toString() => jsonEncode(toJson);
}

@JsonSerializable(includeIfNull: false)
class Taggings {
  final Tracks tracks;
  final Artists artists;
  final Albums albums;
  @JsonKey(name: '@attr')
  final Attr attr;
  Taggings({
    this.tracks,
    this.attr,
    this.artists,
    this.albums,
  });
  factory Taggings.fromJson(Map<String, dynamic> json) => 
    _$TaggingsFromJson(json);
  Map<String, dynamic> toJson() => _$TaggingsToJson(this);
  @override
  String toString() => jsonEncode(toJson);
}