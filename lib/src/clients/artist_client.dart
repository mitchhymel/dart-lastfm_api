part of clients;

class ArtistClient extends BaseClient {
  ArtistClient(RequestMethod requestMethod) : super(requestMethod);
  
  Future<LastFmResponse> addTags(String artist, List<String> tags) async {

    var params = {
      METHOD: 'artist.addTags',
      ARTIST: artist,
      TAGS: tags.join(','),
    };

    return makeRequest(params, authRequired: true);
  }

  Future<LastFmResponse> getCorrection(String artist) async {
      
    var params = {
      METHOD: 'artist.getCorrection',
      ARTIST: artist,
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getInfo({String artist,
    String mbid, String lang, bool autoCorrect=false, String userName
  }) async {
      
    var params = {
      METHOD: 'artist.getInfo',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };
    
    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    LastFmHelpers.addValueIfNotNull(params, USERNAME, userName);
    LastFmHelpers.addValueIfNotNull(params, LANG, lang);

    return makeRequest(params);
  }

  Future<ArtistInfo> getInfoTyped({String artist,
    String mbid, String lang, bool autoCorrect=false, String userName
  }) async {
    var response = await getInfo(artist: artist,
      mbid: mbid, lang: lang, autoCorrect: autoCorrect, userName: userName);
    return ArtistInfo.fromLastFmResponse(response);
  }

  Future<LastFmResponse> getSimilar({String artist,
    int limit=100, bool autoCorrect=false, String mbid
  }) async {
      
    var params = {
      METHOD: 'artist.getSimilar',
      LIMIT: limit.toString(),
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);

    return makeRequest(params);
  }

  Future<List<SimilarArtist>> getSimilarTyped({String artist, 
    int limit=100, bool autoCorrect=false, String mbid
  }) async {
    var response = await getSimilar(artist: artist,
      limit: limit, autoCorrect: autoCorrect, mbid: mbid);
    return SimilarArtist.fromLastFmResponse(response);
  }

  Future<LastFmResponse> getTags({String artist,
     String mbid, String user, bool autoCorrect=false,
  }) async {
    var params = {
      METHOD: 'artist.getTags',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };

    LastFmHelpers.addValueIfNotNull(params, USER, user);
    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);

    return makeRequest(params, authRequired: user != null);
  }

  Future<LastFmResponse> getTopAlbums({String artist,
     String mbid, bool autoCorrect=false, int page=1, int limit=50
  }) async {
    var params = {
      METHOD: 'artist.getTopAlbums',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
      PAGE: page.toString(),
      LIMIT: limit.toString()
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);

    return makeRequest(params);
  }

  Future<LastFmResponse> getTopTags({String artist,
    String mbid, bool autoCorrect=false
  }) async {
    var params = {
      METHOD: 'artist.getTopTags',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);

    return makeRequest(params);
  }
  
  Future<LastFmResponse> getTopTracks({String artist,
     String mbid, bool autoCorrect=false, int page=1, int limit=50
  }) async {
    var params = {
      METHOD: 'artist.getTopTracks',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);

    return makeRequest(params);
  }

  Future<LastFmResponse> removeTag(String artist, String tag) async {
    var params = {
      METHOD: 'artist.removeTag',
      ARTIST: artist,
      TAG: tag,
    };

    return makeRequest(params, authRequired: true);
  }

  Future<LastFmResponse> search(String artist, {
    int limit=30, int page=1
  }) async {
      
    var params = {
      METHOD: 'artist.search',
      ARTIST: artist,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }
}