part of clients;

class ArtistClient extends BaseClient {
  ArtistClient(RequestMethod requestMethod) : super(requestMethod);
  
  Future<LastFmResponse> addTags(String artist, List<String> tags) async {

    var params = {
      'method': 'artist.addTag',
      'artist': artist,
      'tags': tags.join(','),
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

  Future<LastFmResponse> getInfo(String artist, {
    String mbid, String lang, bool autoCorrect=false, String userName
  }) async {
      
    var params = {
      METHOD: 'artist.getInfo',
      ARTIST: artist,
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };
    
    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, USERNAME, userName);
    LastFmHelpers.addValueIfNotNull(params, LANG, lang);

    return makeRequest(params);
  }

  Future<ArtistInfo> getInfoTyped(String artist, {
    String mbid, String lang, bool autoCorrect=false, String userName
  }) async {
    var response = await getInfo(artist,
      mbid: mbid, lang: lang, autoCorrect: autoCorrect, userName: userName);
    return ArtistInfo.fromLastFmResponse(response);
  }

  Future<LastFmResponse> getSimilar(String artist, {
    int limit=100, bool autoCorrect=false, String mbid
  }) async {
      
    var params = {
      METHOD: 'artist.getSimilar',
      ARTIST: artist,
      LIMIT: limit.toString(),
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);

    return makeRequest(params);
  }

  Future<List<SimilarArtist>> getSimilarTyped(String artist, {
    int limit=100, bool autoCorrect=false, String mbid
  }) async {
    var response = await getSimilar(artist,
      limit: limit, autoCorrect: autoCorrect, mbid: mbid);
    return SimilarArtist.fromLastFmResponse(response);
  }

  Future<LastFmResponse> getTags(String artist, {
     String mbid, String user, bool autoCorrect=false,
  }) async {
    var params = {
      'method': 'artist.getTopAlbums',
      'artist': artist,
      'autocorrect': LastFmHelpers.boolToIntString(autoCorrect),
    };

    LastFmHelpers.addValueIfNotNull(params, 'user', user);

    return makeRequest(params, authRequired: user != null);
  }

  Future<LastFmResponse> getTopAlbums(String artist, {
     String mbid, bool autoCorrect=false, int page=0, int limit=50
  }) async {
    var params = {
      'method': 'artist.getTopAlbums',
      'artist': artist,
      'autocorrect': LastFmHelpers.boolToIntString(autoCorrect),
      'page': page.toString(),
      'limit': limit.toString()
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);

    return makeRequest(params);
  }

  Future<LastFmResponse> getTopTags(String artist, {
    String mbid, bool autoCorrect=false
  }) async {
    var params = {
      'method': 'artist.getTopTags',
      'artist': artist,
      'autocorrect': LastFmHelpers.boolToIntString(autoCorrect)
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);

    return makeRequest(params);
  }
  
  Future<LastFmResponse> getTopTracks(String artist, {
     String mbid, bool autoCorrect=false, int page=0, int limit=50
  }) async {
    var params = {
      'method': 'artist.getTopTracks',
      'artist': artist,
      'autocorrect': LastFmHelpers.boolToIntString(autoCorrect),
      'page': page.toString(),
      'limit': limit.toString()
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);

    return makeRequest(params);
  }

  Future<LastFmResponse> removeTag(String artist, String tag) async {
    var params = {
      'method': 'artist.removeTag',
      'artist': artist,
      'tag': tag,
    };

    return makeRequest(params, authRequired: true);
  }

  Future<LastFmResponse> search(String artist, {
    int limit=30, int page=0
  }) async {
      
    var params = {
      'method': 'artist.search',
      'artist': artist,
      'limit': limit.toString(),
      'page': page.toString(),
    };

    return makeRequest(params);
  }
}