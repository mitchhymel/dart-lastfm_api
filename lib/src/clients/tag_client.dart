part of clients;

class TagClient extends BaseClient {
  TagClient(RequestMethod requestMethod) : super(requestMethod);

  Future<LastFmResponse> getInfo(String tag, {String lang}) async {
      
    var params = {
      METHOD: 'tag.getInfo',
      TAG: tag,
    };
    
    LastFmHelpers.addValueIfNotNull(params, LANG, lang);

    return makeRequest(params);
  }

  Future<LastFmResponse> getSimilar(String tag) async {
      
    var params = {
      METHOD: 'tag.getSimilar',
      TAG: tag,
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getTopAlbums(String tag, {
    int limit=50, int page=1,
  }) async {
      
    var params = {
      METHOD: 'tag.getTopAlbums',
      TAG: tag,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getTopArtists(String tag, {
    int limit=50, int page=1,
  }) async {
      
    var params = {
      METHOD: 'tag.getTopArtists',
      TAG: tag,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getTopTags() async {
      
    var params = {
      METHOD: 'tag.getTopTags',
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getTopTracks(String tag, {
    int limit=50, int page=1,
  }) async {
      
    var params = {
      METHOD: 'tag.getTopTracks',
      TAG: tag,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getWeeklyChartList(String tag) async {
      
    var params = {
      METHOD: 'tag.getWeeklyChartList',
      TAG: tag,
    };

    return makeRequest(params);
  }
}