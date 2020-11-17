// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastFmResponseData _$LastFmResponseDataFromJson(Map<String, dynamic> json) {
  return LastFmResponseData(
    friends: json['friends'] == null
        ? null
        : Users.fromJson(json['friends'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    session: json['session'] == null
        ? null
        : UserSession.fromJson(json['session'] as Map<String, dynamic>),
    album: json['album'] == null
        ? null
        : Album.fromJson(json['album'] as Map<String, dynamic>),
    albums: json['albums'] == null
        ? null
        : Albums.fromJson(json['albums'] as Map<String, dynamic>),
    topalbums: json['topalbums'] == null
        ? null
        : Albums.fromJson(json['topalbums'] as Map<String, dynamic>),
    artist: json['artist'] == null
        ? null
        : Artist.fromJson(json['artist'] as Map<String, dynamic>),
    artists: json['artists'] == null
        ? null
        : Artists.fromJson(json['artists'] as Map<String, dynamic>),
    topartists: json['topartists'] == null
        ? null
        : Artists.fromJson(json['topartists'] as Map<String, dynamic>),
    similarartists: json['similarartists'] == null
        ? null
        : Artists.fromJson(json['similarartists'] as Map<String, dynamic>),
    tag: json['tag'] == null
        ? null
        : Tag.fromJson(json['tag'] as Map<String, dynamic>),
    tags: json['tags'] == null
        ? null
        : Tags.fromJson(json['tags'] as Map<String, dynamic>),
    toptags: json['toptags'] == null
        ? null
        : Tags.fromJson(json['toptags'] as Map<String, dynamic>),
    track: json['track'] == null
        ? null
        : Track.fromJson(json['track'] as Map<String, dynamic>),
    tracks: json['tracks'] == null
        ? null
        : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
    toptracks: json['toptracks'] == null
        ? null
        : Tracks.fromJson(json['toptracks'] as Map<String, dynamic>),
    similartracks: json['similartracks'] == null
        ? null
        : Tracks.fromJson(json['similartracks'] as Map<String, dynamic>),
    lovedtracks: json['lovedtracks'] == null
        ? null
        : Tracks.fromJson(json['lovedtracks'] as Map<String, dynamic>),
    recenttracks: json['recenttracks'] == null
        ? null
        : Tracks.fromJson(json['recenttracks'] as Map<String, dynamic>),
    results: json['results'] == null
        ? null
        : Results.fromJson(json['results'] as Map<String, dynamic>),
    corrections: json['corrections'] == null
        ? null
        : Corrections.fromJson(json['corrections'] as Map<String, dynamic>),
    taggings: json['taggings'] == null
        ? null
        : Taggings.fromJson(json['taggings'] as Map<String, dynamic>),
    weeklychartlist: json['weeklychartlist'] == null
        ? null
        : Charts.fromJson(json['weeklychartlist'] as Map<String, dynamic>),
    weeklyalbumchart: json['weeklyalbumchart'] == null
        ? null
        : Albums.fromJson(json['weeklyalbumchart'] as Map<String, dynamic>),
    weeklyartistchart: json['weeklyartistchart'] == null
        ? null
        : Artists.fromJson(json['weeklyartistchart'] as Map<String, dynamic>),
    weeklytrackchart: json['weeklytrackchart'] == null
        ? null
        : Tracks.fromJson(json['weeklytrackchart'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LastFmResponseDataToJson(LastFmResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('session', instance.session);
  writeNotNull('friends', instance.friends);
  writeNotNull('user', instance.user);
  writeNotNull('track', instance.track);
  writeNotNull('tracks', instance.tracks);
  writeNotNull('toptracks', instance.toptracks);
  writeNotNull('similartracks', instance.similartracks);
  writeNotNull('lovedtracks', instance.lovedtracks);
  writeNotNull('recenttracks', instance.recenttracks);
  writeNotNull('weeklytrackchart', instance.weeklytrackchart);
  writeNotNull('taggings', instance.taggings);
  writeNotNull('artist', instance.artist);
  writeNotNull('artists', instance.artists);
  writeNotNull('topartists', instance.topartists);
  writeNotNull('similarartists', instance.similarartists);
  writeNotNull('weeklyartistchart', instance.weeklyartistchart);
  writeNotNull('album', instance.album);
  writeNotNull('albums', instance.albums);
  writeNotNull('topalbums', instance.topalbums);
  writeNotNull('weeklyalbumchart', instance.weeklyalbumchart);
  writeNotNull('tag', instance.tag);
  writeNotNull('tags', instance.tags);
  writeNotNull('toptags', instance.toptags);
  writeNotNull('results', instance.results);
  writeNotNull('corrections', instance.corrections);
  writeNotNull('weeklychartlist', instance.weeklychartlist);
  return val;
}

Corrections _$CorrectionsFromJson(Map<String, dynamic> json) {
  return Corrections(
    correction: json['correction'] == null
        ? null
        : Correction.fromJson(json['correction'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CorrectionsToJson(Corrections instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('correction', instance.correction);
  return val;
}

Correction _$CorrectionFromJson(Map<String, dynamic> json) {
  return Correction(
    track: json['track'] == null
        ? null
        : Track.fromJson(json['track'] as Map<String, dynamic>),
    artist: json['artist'] == null
        ? null
        : Artist.fromJson(json['artist'] as Map<String, dynamic>),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CorrectionToJson(Correction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('track', instance.track);
  writeNotNull('artist', instance.artist);
  writeNotNull('@attr', instance.attr);
  return val;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return Results(
    query: json['opensearch:Query'] == null
        ? null
        : OpenSearchQuery.fromJson(
            json['opensearch:Query'] as Map<String, dynamic>),
    totalResults: _intFromStringOrInt(json['opensearch:totalResults']),
    startIndex: _intFromStringOrInt(json['opensearch:startIndex']),
    itemsPerPage: _intFromStringOrInt(json['opensearch:itemsPerPage']),
    albums: json['albummatches'] == null
        ? null
        : Albums.fromJson(json['albummatches'] as Map<String, dynamic>),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
    artists: json['artistmatches'] == null
        ? null
        : Artists.fromJson(json['artistmatches'] as Map<String, dynamic>),
    tracks: json['trackmatches'] == null
        ? null
        : Tracks.fromJson(json['trackmatches'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResultsToJson(Results instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('opensearch:Query', instance.query);
  writeNotNull(
      'opensearch:totalResults', _stringFromInt(instance.totalResults));
  writeNotNull('opensearch:startIndex', _stringFromInt(instance.startIndex));
  writeNotNull(
      'opensearch:itemsPerPage', _stringFromInt(instance.itemsPerPage));
  writeNotNull('albummatches', instance.albums);
  writeNotNull('artistmatches', instance.artists);
  writeNotNull('trackmatches', instance.tracks);
  writeNotNull('@attr', instance.attr);
  return val;
}

OpenSearchQuery _$OpenSearchQueryFromJson(Map<String, dynamic> json) {
  return OpenSearchQuery(
    text: json['#text'] as String,
    role: json['role'] as String,
    searchTerms: json['searchTerms'] as String,
    startPage: _intFromStringOrInt(json['startPage']),
  );
}

Map<String, dynamic> _$OpenSearchQueryToJson(OpenSearchQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('#text', instance.text);
  writeNotNull('role', instance.role);
  writeNotNull('searchTerms', instance.searchTerms);
  writeNotNull('startPage', _stringFromInt(instance.startPage));
  return val;
}

Albums _$AlbumsFromJson(Map<String, dynamic> json) {
  return Albums(
    items: (json['album'] as List)
        ?.map(
            (e) => e == null ? null : Album.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AlbumsToJson(Albums instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('album', instance.items);
  writeNotNull('@attr', instance.attr);
  return val;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return Album(
    name: json['name'] as String,
    artist: _artistFromStringOrMap(json['artist']),
    mbid: json['mbid'] as String,
    url: json['url'] as String,
    image: (json['image'] as List)
        ?.map((e) =>
            e == null ? null : LastFmImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    listeners: _intFromStringOrInt(json['listeners']),
    playcount: _intFromStringOrInt(json['playcount']),
    userplaycount: _intFromStringOrInt(json['userplaycount']),
    tracks: json['tracks'] == null
        ? null
        : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
    tags: json['tags'] == null
        ? null
        : Tags.fromJson(json['tags'] as Map<String, dynamic>),
    wiki: json['wiki'] == null
        ? null
        : Wiki.fromJson(json['wiki'] as Map<String, dynamic>),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
    text: json['#text'] as String,
  );
}

Map<String, dynamic> _$AlbumToJson(Album instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('artist', instance.artist);
  writeNotNull('mbid', instance.mbid);
  writeNotNull('url', instance.url);
  writeNotNull('image', instance.image);
  writeNotNull('listeners', _stringFromInt(instance.listeners));
  writeNotNull('playcount', _stringFromInt(instance.playcount));
  writeNotNull('userplaycount', _stringFromInt(instance.userplaycount));
  writeNotNull('tracks', instance.tracks);
  writeNotNull('tags', instance.tags);
  writeNotNull('wiki', instance.wiki);
  writeNotNull('@attr', instance.attr);
  writeNotNull('#text', instance.text);
  return val;
}

LastFmImage _$LastFmImageFromJson(Map<String, dynamic> json) {
  return LastFmImage(
    text: json['#text'] as String,
    size: json['size'] as String,
  );
}

Map<String, dynamic> _$LastFmImageToJson(LastFmImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('#text', instance.text);
  writeNotNull('size', instance.size);
  return val;
}

Tracks _$TracksFromJson(Map<String, dynamic> json) {
  return Tracks(
    items: (json['track'] as List)
        ?.map(
            (e) => e == null ? null : Track.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TracksToJson(Tracks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('track', instance.items);
  writeNotNull('@attr', instance.attr);
  return val;
}

Track _$TrackFromJson(Map<String, dynamic> json) {
  return Track(
    name: json['name'] as String,
    mbid: json['mbid'] as String,
    url: json['url'] as String,
    duration: _intFromStringOrInt(json['duration']),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
    streamable: _boolFromStringOrMap(json['streamable']),
    artist: _artistFromStringOrMap(json['artist']),
    listeners: _intFromStringOrInt(json['listeners']),
    playcount: _intFromStringOrInt(json['playcount']),
    album: json['album'] == null
        ? null
        : Album.fromJson(json['album'] as Map<String, dynamic>),
    toptags: json['toptags'] == null
        ? null
        : Tags.fromJson(json['toptags'] as Map<String, dynamic>),
    date: json['date'] == null
        ? null
        : LastFmDate.fromJson(json['date'] as Map<String, dynamic>),
    images: (json['image'] as List)
        ?.map((e) =>
            e == null ? null : LastFmImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    userplaycount: _intFromStringOrInt(json['userplaycount']),
    userloved: _boolFromStringOrMap(json['userloved']),
  );
}

Map<String, dynamic> _$TrackToJson(Track instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('mbid', instance.mbid);
  writeNotNull('url', instance.url);
  writeNotNull('duration', _stringFromInt(instance.duration));
  writeNotNull('@attr', instance.attr);
  writeNotNull('streamable', _stringFromBool(instance.streamable));
  writeNotNull('artist', instance.artist);
  writeNotNull('listeners', _stringFromInt(instance.listeners));
  writeNotNull('playcount', _stringFromInt(instance.playcount));
  writeNotNull('album', instance.album);
  writeNotNull('toptags', instance.toptags);
  writeNotNull('date', instance.date);
  writeNotNull('image', instance.images);
  writeNotNull('userplaycount', _stringFromInt(instance.userplaycount));
  writeNotNull('userloved', instance.userloved);
  return val;
}

Attr _$AttrFromJson(Map<String, dynamic> json) {
  return Attr(
    rank: _intFromStringOrInt(json['rank']),
    artist: json['artist'] as String,
    album: json['album'] as String,
    forStr: json['for'] as String,
    index: _intFromStringOrInt(json['index']),
    page: _intFromStringOrInt(json['page']),
    perPage: _intFromStringOrInt(json['perPage']),
    totalPages: _intFromStringOrInt(json['totalPages']),
    total: _intFromStringOrInt(json['total']),
    user: json['user'] as String,
    tag: json['tag'] as String,
    offset: _intFromStringOrInt(json['offset']),
    numRes: _intFromStringOrInt(json['num_res']),
    artistcorrected: json['artistcorrected'] as String,
    trackcorrected: json['trackcorrected'] as String,
    position: _intFromStringOrInt(json['position']),
    track: json['track'] as String,
    nowplaying: _boolFromStringOrMap(json['nowplaying']),
    from: json['from'] as String,
    to: json['to'] as String,
  );
}

Map<String, dynamic> _$AttrToJson(Attr instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rank', _stringFromInt(instance.rank));
  writeNotNull('for', instance.forStr);
  writeNotNull('index', _stringFromInt(instance.index));
  writeNotNull('page', _stringFromInt(instance.page));
  writeNotNull('perPage', _stringFromInt(instance.perPage));
  writeNotNull('totalPages', _stringFromInt(instance.totalPages));
  writeNotNull('total', _stringFromInt(instance.total));
  writeNotNull('offset', _stringFromInt(instance.offset));
  writeNotNull('position', _stringFromInt(instance.position));
  writeNotNull('num_res', _stringFromInt(instance.numRes));
  writeNotNull('user', instance.user);
  writeNotNull('tag', instance.tag);
  writeNotNull('artist', instance.artist);
  writeNotNull('track', instance.track);
  writeNotNull('album', instance.album);
  writeNotNull('artistcorrected', instance.artistcorrected);
  writeNotNull('trackcorrected', instance.trackcorrected);
  writeNotNull('nowplaying', instance.nowplaying);
  writeNotNull('from', instance.from);
  writeNotNull('to', instance.to);
  return val;
}

Streamable _$StreamableFromJson(Map<String, dynamic> json) {
  return Streamable(
    text: json['#text'] as String,
    fulltrack: json['fulltrack'] as String,
  );
}

Map<String, dynamic> _$StreamableToJson(Streamable instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('#text', instance.text);
  writeNotNull('fulltrack', instance.fulltrack);
  return val;
}

Artists _$ArtistsFromJson(Map<String, dynamic> json) {
  return Artists(
    items: (json['artist'] as List)
        ?.map((e) =>
            e == null ? null : Artist.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArtistsToJson(Artists instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('artist', instance.items);
  writeNotNull('@attr', instance.attr);
  return val;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return Artist(
    name: json['name'] as String,
    mbid: json['mbid'] as String,
    url: json['url'] as String,
    image: (json['image'] as List)
        ?.map((e) =>
            e == null ? null : LastFmImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    streamable: _boolFromStringOrMap(json['streamable']),
    ontour: _boolFromStringOrMap(json['ontour']),
    stats: json['stats'] == null
        ? null
        : Stats.fromJson(json['stats'] as Map<String, dynamic>),
    similar: json['similar'] == null
        ? null
        : Artists.fromJson(json['similar'] as Map<String, dynamic>),
    tags: json['tags'] == null
        ? null
        : Tags.fromJson(json['tags'] as Map<String, dynamic>),
    bio: json['bio'] == null
        ? null
        : Wiki.fromJson(json['bio'] as Map<String, dynamic>),
    match: _stringToDouble(json['match'] as String),
    listeners: _intFromStringOrInt(json['listeners']),
    playcount: _intFromStringOrInt(json['playcount']),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
    text: json['#text'] as String,
  );
}

Map<String, dynamic> _$ArtistToJson(Artist instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('mbid', instance.mbid);
  writeNotNull('url', instance.url);
  writeNotNull('image', instance.image);
  writeNotNull('streamable', instance.streamable);
  writeNotNull('ontour', instance.ontour);
  writeNotNull('stats', instance.stats);
  writeNotNull('similar', instance.similar);
  writeNotNull('tags', instance.tags);
  writeNotNull('bio', instance.bio);
  writeNotNull('match', _stringFromDouble(instance.match));
  writeNotNull('listeners', _stringFromInt(instance.listeners));
  writeNotNull('playcount', _stringFromInt(instance.playcount));
  writeNotNull('@attr', instance.attr);
  writeNotNull('#text', instance.text);
  return val;
}

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return Tags(
    items: (json['tag'] as List)
        ?.map((e) => e == null ? null : Tag.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TagsToJson(Tags instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag', instance.items);
  writeNotNull('@attr', instance.attr);
  return val;
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
    count: _intFromStringOrInt(json['count']),
    name: json['name'] as String,
    url: json['url'] as String,
    total: _intFromStringOrInt(json['total']),
    reach: _intFromStringOrInt(json['reach']),
    taggings: json['taggings'] as String,
    streamable: json['streamable'] as String,
    wiki: json['wiki'] == null
        ? null
        : Wiki.fromJson(json['wiki'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TagToJson(Tag instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', _stringFromInt(instance.count));
  writeNotNull('name', instance.name);
  writeNotNull('url', instance.url);
  writeNotNull('total', _stringFromInt(instance.total));
  writeNotNull('reach', _stringFromInt(instance.reach));
  writeNotNull('taggings', instance.taggings);
  writeNotNull('streamable', instance.streamable);
  writeNotNull('wiki', instance.wiki);
  return val;
}

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

Map<String, dynamic> _$WikiToJson(Wiki instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('links', instance.links);
  writeNotNull('published', instance.published);
  writeNotNull('summary', instance.summary);
  writeNotNull('content', instance.content);
  return val;
}

UserSession _$UserSessionFromJson(Map<String, dynamic> json) {
  return UserSession(
    name: json['name'] as String,
    key: json['key'] as String,
    subscriber: _boolFromStringOrMap(json['subscriber']),
  );
}

Map<String, dynamic> _$UserSessionToJson(UserSession instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('key', instance.key);
  writeNotNull('subscriber', instance.subscriber);
  return val;
}

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return Stats(
    listeners: _intFromStringOrInt(json['listeners']),
    playcount: _intFromStringOrInt(json['playcount']),
    userplaycount: _intFromStringOrInt(json['userplaycount']),
  );
}

Map<String, dynamic> _$StatsToJson(Stats instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('listeners', _stringFromInt(instance.listeners));
  writeNotNull('playcount', _stringFromInt(instance.playcount));
  writeNotNull('userplaycount', _stringFromInt(instance.userplaycount));
  return val;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    link: json['link'] == null
        ? null
        : Link.fromJson(json['link'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('link', instance.link);
  return val;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return Link(
    text: json['#text'] as String,
    rel: json['rel'] as String,
    href: json['href'] as String,
  );
}

Map<String, dynamic> _$LinkToJson(Link instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('#text', instance.text);
  writeNotNull('rel', instance.rel);
  writeNotNull('href', instance.href);
  return val;
}

Charts _$ChartsFromJson(Map<String, dynamic> json) {
  return Charts(
    items: (json['chart'] as List)
        ?.map(
            (e) => e == null ? null : Chart.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChartsToJson(Charts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('chart', instance.items);
  writeNotNull('@attr', instance.attr);
  return val;
}

Chart _$ChartFromJson(Map<String, dynamic> json) {
  return Chart(
    text: json['#text'] as String,
    to: json['to'] as String,
    from: json['from'] as String,
  );
}

Map<String, dynamic> _$ChartToJson(Chart instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('#text', instance.text);
  writeNotNull('to', instance.to);
  writeNotNull('from', instance.from);
  return val;
}

Users _$UsersFromJson(Map<String, dynamic> json) {
  return Users(
    items: (json['user'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UsersToJson(Users instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user', instance.items);
  writeNotNull('@attr', instance.attr);
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    playlists: json['playlists'] as String,
    playcount: _intFromStringOrInt(json['playcount']),
    subscriber: _boolFromStringOrMap(json['subscriber']),
    name: json['name'] as String,
    country: json['country'] as String,
    images: (json['image'] as List)
        ?.map((e) =>
            e == null ? null : LastFmImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    registered: json['registered'] == null
        ? null
        : Registered.fromJson(json['registered'] as Map<String, dynamic>),
    url: json['url'] as String,
    realname: json['realname'] as String,
    bootstrap: json['bootstrap'] as String,
    type: json['type'] as String,
    gender: json['gender'] as String,
    age: _intFromStringOrInt(json['age']),
  );
}

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('playlists', instance.playlists);
  writeNotNull('playcount', _stringFromInt(instance.playcount));
  writeNotNull('subscriber', instance.subscriber);
  writeNotNull('name', instance.name);
  writeNotNull('country', instance.country);
  writeNotNull('image', instance.images);
  writeNotNull('registered', instance.registered);
  writeNotNull('url', instance.url);
  writeNotNull('realname', instance.realname);
  writeNotNull('bootstrap', instance.bootstrap);
  writeNotNull('type', instance.type);
  writeNotNull('gender', instance.gender);
  writeNotNull('age', _stringFromInt(instance.age));
  return val;
}

Registered _$RegisteredFromJson(Map<String, dynamic> json) {
  return Registered(
    unixtime: _dateTimeFromStringOrInt(json['unixtime']),
  );
}

Map<String, dynamic> _$RegisteredToJson(Registered instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unixtime', instance.unixtime?.toIso8601String());
  return val;
}

LastFmDate _$LastFmDateFromJson(Map<String, dynamic> json) {
  return LastFmDate(
    uts: json['uts'] as String,
    text: json['#text'] as String,
  );
}

Map<String, dynamic> _$LastFmDateToJson(LastFmDate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uts', instance.uts);
  writeNotNull('#text', instance.text);
  return val;
}

Taggings _$TaggingsFromJson(Map<String, dynamic> json) {
  return Taggings(
    tracks: json['tracks'] == null
        ? null
        : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
    attr: json['@attr'] == null
        ? null
        : Attr.fromJson(json['@attr'] as Map<String, dynamic>),
    artists: json['artists'] == null
        ? null
        : Artists.fromJson(json['artists'] as Map<String, dynamic>),
    albums: json['albums'] == null
        ? null
        : Albums.fromJson(json['albums'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TaggingsToJson(Taggings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tracks', instance.tracks);
  writeNotNull('artists', instance.artists);
  writeNotNull('albums', instance.albums);
  writeNotNull('@attr', instance.attr);
  return val;
}
