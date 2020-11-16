// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumGetInfoResponse _$AlbumGetInfoResponseFromJson(Map<String, dynamic> json) {
  return AlbumGetInfoResponse(
    album: json['album'] == null
        ? null
        : Album.fromJson(json['album'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AlbumGetInfoResponseToJson(
        AlbumGetInfoResponse instance) =>
    <String, dynamic>{
      'album': instance.album,
    };

AlbumGetTagsResponse _$AlbumGetTagsResponseFromJson(Map<String, dynamic> json) {
  return AlbumGetTagsResponse(
    tags: json['tags'] == null
        ? null
        : Tags.fromJson(json['tags'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AlbumGetTagsResponseToJson(
        AlbumGetTagsResponse instance) =>
    <String, dynamic>{
      'tags': instance.tags,
    };

AlbumGetTopTagsResponse _$AlbumGetTopTagsResponseFromJson(
    Map<String, dynamic> json) {
  return AlbumGetTopTagsResponse(
    tags: json['toptags'] == null
        ? null
        : Tags.fromJson(json['toptags'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AlbumGetTopTagsResponseToJson(
        AlbumGetTopTagsResponse instance) =>
    <String, dynamic>{
      'toptags': instance.tags,
    };

AlbumSearchResponse _$AlbumSearchResponseFromJson(Map<String, dynamic> json) {
  return AlbumSearchResponse(
    results: json['results'] == null
        ? null
        : Results.fromJson(json['results'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AlbumSearchResponseToJson(
        AlbumSearchResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

ArtistGetCorrectionsResponse _$ArtistGetCorrectionsResponseFromJson(
    Map<String, dynamic> json) {
  return ArtistGetCorrectionsResponse(
    corrections: json['corrections'] == null
        ? null
        : Corrections.fromJson(json['corrections'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistGetCorrectionsResponseToJson(
        ArtistGetCorrectionsResponse instance) =>
    <String, dynamic>{
      'corrections': instance.corrections,
    };

ArtistGetInfoResponse _$ArtistGetInfoResponseFromJson(
    Map<String, dynamic> json) {
  return ArtistGetInfoResponse(
    artist: json['artist'] == null
        ? null
        : Artist.fromJson(json['artist'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistGetInfoResponseToJson(
        ArtistGetInfoResponse instance) =>
    <String, dynamic>{
      'artist': instance.artist,
    };

ArtistGetSimilarResponse _$ArtistGetSimilarResponseFromJson(
    Map<String, dynamic> json) {
  return ArtistGetSimilarResponse(
    similar: json['similarartists'] == null
        ? null
        : Similar.fromJson(json['similarartists'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistGetSimilarResponseToJson(
        ArtistGetSimilarResponse instance) =>
    <String, dynamic>{
      'similarartists': instance.similar,
    };

ArtistGetTagsResponse _$ArtistGetTagsResponseFromJson(
    Map<String, dynamic> json) {
  return ArtistGetTagsResponse(
    tags: json['tags'] == null
        ? null
        : Tags.fromJson(json['tags'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistGetTagsResponseToJson(
        ArtistGetTagsResponse instance) =>
    <String, dynamic>{
      'tags': instance.tags,
    };

ArtistGetTopAlbumsResponse _$ArtistGetTopAlbumsResponseFromJson(
    Map<String, dynamic> json) {
  return ArtistGetTopAlbumsResponse(
    topAlbums: json['topalbums'] == null
        ? null
        : Albums.fromJson(json['topalbums'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistGetTopAlbumsResponseToJson(
        ArtistGetTopAlbumsResponse instance) =>
    <String, dynamic>{
      'topalbums': instance.topAlbums,
    };

ArtistGetTopTagsResponse _$ArtistGetTopTagsResponseFromJson(
    Map<String, dynamic> json) {
  return ArtistGetTopTagsResponse(
    topTags: json['toptags'] == null
        ? null
        : Tags.fromJson(json['toptags'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistGetTopTagsResponseToJson(
        ArtistGetTopTagsResponse instance) =>
    <String, dynamic>{
      'toptags': instance.topTags,
    };

ArtistGetTopTracksResponse _$ArtistGetTopTracksResponseFromJson(
    Map<String, dynamic> json) {
  return ArtistGetTopTracksResponse(
    topTracks: json['toptracks'] == null
        ? null
        : Tracks.fromJson(json['toptracks'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistGetTopTracksResponseToJson(
        ArtistGetTopTracksResponse instance) =>
    <String, dynamic>{
      'toptracks': instance.topTracks,
    };

ArtistSearchResponse _$ArtistSearchResponseFromJson(Map<String, dynamic> json) {
  return ArtistSearchResponse(
    results: json['results'] == null
        ? null
        : Results.fromJson(json['results'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistSearchResponseToJson(
        ArtistSearchResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Corrections _$CorrectionsFromJson(Map<String, dynamic> json) {
  return Corrections(
    correction: json['correction'] == null
        ? null
        : Correction.fromJson(json['correction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CorrectionsToJson(Corrections instance) =>
    <String, dynamic>{
      'correction': instance.correction,
    };

Correction _$CorrectionFromJson(Map<String, dynamic> json) {
  return Correction(
    artist: json['artist'] == null
        ? null
        : Artist.fromJson(json['artist'] as Map<String, dynamic>),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CorrectionToJson(Correction instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      '@attr': instance.attr,
    };

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return Results(
    query: json['opensearch:Query'] == null
        ? null
        : OpenSearchQuery.fromJson(
            json['opensearch:Query'] as Map<String, dynamic>),
    totalResults: _stringToInt(json['opensearch:totalResults'] as String),
    startIndex: _stringToInt(json['opensearch:startIndex'] as String),
    itemsPerPage: _stringToInt(json['opensearch:itemsPerPage'] as String),
    albums: json['albummatches'] == null
        ? null
        : Albums.fromJson(json['albummatches'] as Map<String, dynamic>),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
    artists: json['artistmatches'] == null
        ? null
        : Artists.fromJson(json['artistmatches'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'opensearch:Query': instance.query,
      'opensearch:totalResults': _stringFromInt(instance.totalResults),
      'opensearch:startIndex': _stringFromInt(instance.startIndex),
      'opensearch:itemsPerPage': _stringFromInt(instance.itemsPerPage),
      'albummatches': instance.albums,
      'artistmatches': instance.artists,
      '@attr': instance.attr,
    };

OpenSearchQuery _$OpenSearchQueryFromJson(Map<String, dynamic> json) {
  return OpenSearchQuery(
    text: json['#text'] as String,
    role: json['role'] as String,
    searchTerms: json['searchTerms'] as String,
    startPage: _stringToInt(json['startPage'] as String),
  );
}

Map<String, dynamic> _$OpenSearchQueryToJson(OpenSearchQuery instance) =>
    <String, dynamic>{
      '#text': instance.text,
      'role': instance.role,
      'searchTerms': instance.searchTerms,
      'startPage': _stringFromInt(instance.startPage),
    };

Albums _$AlbumsFromJson(Map<String, dynamic> json) {
  return Albums(
    albums: (json['album'] as List)
        ?.map(
            (e) => e == null ? null : Album.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AlbumsToJson(Albums instance) => <String, dynamic>{
      'album': instance.albums,
      '@attr': instance.attr,
    };

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return Album(
    name: json['name'] as String,
    artist: json['artist'] as String,
    mbid: json['mbid'] as String,
    url: json['url'] as String,
    image: (json['image'] as List)
        ?.map((e) =>
            e == null ? null : LastFmImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    listeners: _stringToInt(json['listeners'] as String),
    playcount: _stringToInt(json['playcount'] as String),
    tracks: json['tracks'] == null
        ? null
        : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
    tags: json['tags'] == null
        ? null
        : Tags.fromJson(json['tags'] as Map<String, dynamic>),
    wiki: json['wiki'] == null
        ? null
        : Wiki.fromJson(json['wiki'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'name': instance.name,
      'artist': instance.artist,
      'mbid': instance.mbid,
      'url': instance.url,
      'image': instance.image,
      'listeners': _stringFromInt(instance.listeners),
      'playcount': _stringFromInt(instance.playcount),
      'tracks': instance.tracks,
      'tags': instance.tags,
      'wiki': instance.wiki,
    };

LastFmImage _$LastFmImageFromJson(Map<String, dynamic> json) {
  return LastFmImage(
    text: json['#text'] as String,
    size: json['size'] as String,
  );
}

Map<String, dynamic> _$LastFmImageToJson(LastFmImage instance) =>
    <String, dynamic>{
      '#text': instance.text,
      'size': instance.size,
    };

Tracks _$TracksFromJson(Map<String, dynamic> json) {
  return Tracks(
    tracks: (json['track'] as List)
        ?.map(
            (e) => e == null ? null : Track.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TracksToJson(Tracks instance) => <String, dynamic>{
      'track': instance.tracks,
      '@attr': instance.attr,
    };

Track _$TrackFromJson(Map<String, dynamic> json) {
  return Track(
    name: json['name'] as String,
    url: json['url'] as String,
    duration: json['duration'] as String,
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
    streamable: json['streamable'] == null
        ? null
        : Streamable.fromJson(json['streamable'] as Map<String, dynamic>),
    artist: json['artist'] == null
        ? null
        : Artist.fromJson(json['artist'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TrackToJson(Track instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'duration': instance.duration,
      '@attr': instance.attr,
      'streamable': instance.streamable,
      'artist': instance.artist,
    };

Attr _$AttrFromJson(Map<String, dynamic> json) {
  return Attr(
    rank: _stringToInt(json['rank'] as String),
    artist: json['artist'] as String,
    album: json['album'] as String,
    forStr: json['for'] as String,
    index: _stringToInt(json['index'] as String),
    page: _stringToInt(json['page'] as String),
    perPage: _stringToInt(json['perPage'] as String),
    totalPages: _stringToInt(json['totalPages'] as String),
    total: _stringToInt(json['total'] as String),
  );
}

Map<String, dynamic> _$AttrToJson(Attr instance) => <String, dynamic>{
      'rank': _stringFromInt(instance.rank),
      'artist': instance.artist,
      'album': instance.album,
      'for': instance.forStr,
      'index': _stringFromInt(instance.index),
      'page': _stringFromInt(instance.page),
      'perPage': _stringFromInt(instance.perPage),
      'totalPages': _stringFromInt(instance.totalPages),
      'total': _stringFromInt(instance.total),
    };

Streamable _$StreamableFromJson(Map<String, dynamic> json) {
  return Streamable(
    text: json['#text'] as String,
    fulltrack: json['fulltrack'] as String,
  );
}

Map<String, dynamic> _$StreamableToJson(Streamable instance) =>
    <String, dynamic>{
      '#text': instance.text,
      'fulltrack': instance.fulltrack,
    };

Artists _$ArtistsFromJson(Map<String, dynamic> json) {
  return Artists(
    artists: (json['artist'] as List)
        ?.map((e) =>
            e == null ? null : Artist.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ArtistsToJson(Artists instance) => <String, dynamic>{
      'artist': instance.artists,
    };

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return Artist(
    name: json['name'] as String,
    mbid: json['mbid'] as String,
    url: json['url'] as String,
    image: (json['image'] as List)
        ?.map((e) =>
            e == null ? null : LastFmImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    streamable: json['streamable'] as String,
    ontour: json['ontour'] as String,
    stats: json['stats'] == null
        ? null
        : Stats.fromJson(json['stats'] as Map<String, dynamic>),
    similar: json['similar'] == null
        ? null
        : Similar.fromJson(json['similar'] as Map<String, dynamic>),
    tags: json['tags'] == null
        ? null
        : Tags.fromJson(json['tags'] as Map<String, dynamic>),
    bio: json['bio'] == null
        ? null
        : Wiki.fromJson(json['bio'] as Map<String, dynamic>),
    match: json['match'] as String,
    listeners: _stringToInt(json['listeners'] as String),
  );
}

Map<String, dynamic> _$ArtistToJson(Artist instance) => <String, dynamic>{
      'name': instance.name,
      'mbid': instance.mbid,
      'url': instance.url,
      'image': instance.image,
      'streamable': instance.streamable,
      'ontour': instance.ontour,
      'stats': instance.stats,
      'similar': instance.similar,
      'tags': instance.tags,
      'bio': instance.bio,
      'match': instance.match,
      'listeners': _stringFromInt(instance.listeners),
    };

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return Tags(
    tags: (json['tag'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'tag': instance.tags,
      '@attr': instance.attr,
    };

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
    count: json['count'] as int,
    name: json['name'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
      'count': instance.count,
      'name': instance.name,
      'url': instance.url,
    };

Wiki _$WikiFromJson(Map<String, dynamic> json) {
  return Wiki(
    links: json['links'] == null
        ? null
        : Links.fromJson(json['links'] as Map<String, dynamic>),
    published: json['published'] as String,
    summary: json['summary'] as String,
    content: json['content'] as String,
  );
}

Map<String, dynamic> _$WikiToJson(Wiki instance) => <String, dynamic>{
      'links': instance.links,
      'published': instance.published,
      'summary': instance.summary,
      'content': instance.content,
    };

UserSession _$UserSessionFromJson(Map<String, dynamic> json) {
  return UserSession(
    userName: json['userName'] as String,
    key: json['key'] as String,
    subscriber: json['subscriber'] as int,
  );
}

Map<String, dynamic> _$UserSessionToJson(UserSession instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'key': instance.key,
      'subscriber': instance.subscriber,
    };

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return Stats(
    listeners: _stringToInt(json['listeners'] as String),
    playcount: _stringToInt(json['playcount'] as String),
  );
}

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'listeners': _stringFromInt(instance.listeners),
      'playcount': _stringFromInt(instance.playcount),
    };

Similar _$SimilarFromJson(Map<String, dynamic> json) {
  return Similar(
    artists: (json['artist'] as List)
        ?.map((e) =>
            e == null ? null : Artist.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SimilarToJson(Similar instance) => <String, dynamic>{
      'artist': instance.artists,
      '@attr': instance.attr,
    };

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    link: json['link'] == null
        ? null
        : Link.fromJson(json['link'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'link': instance.link,
    };

Link _$LinkFromJson(Map<String, dynamic> json) {
  return Link(
    text: json['#text'] as String,
    rel: json['rel'] as String,
    href: json['href'] as String,
  );
}

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      '#text': instance.text,
      'rel': instance.rel,
      'href': instance.href,
    };
