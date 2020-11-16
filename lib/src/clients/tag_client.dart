part of clients;

class TagClient extends BaseClient {
  TagClient(RequestMethod requestMethod) : super(requestMethod);

  Future<LastFmResponse<TagGetInfoResponse>> getInfo(String tag, {String lang}) async {
      
    var params = {
      METHOD: 'tag.getInfo',
      TAG: tag,
    };
    
    LastFmHelpers.addValueIfNotNull(params, LANG, lang);

    var resp = await makeRequest(params);

    return resp.copyWith<TagGetInfoResponse>(
      data: TagGetInfoResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse> getSimilar(String tag) async {
      
      throw new UnimplementedError('Not yet implemented');
    // var params = {
    //   METHOD: 'tag.getSimilar',
    //   TAG: tag,
    // };

    // return makeRequest(params);
  }

  Future<LastFmResponse<TagGetTopAlbumsResponse>> getTopAlbums(String tag, {
    int limit=50, int page=1,
  }) async {
      
    var params = {
      METHOD: 'tag.getTopAlbums',
      TAG: tag,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    var resp = await makeRequest(params);

    return resp.copyWith<TagGetTopAlbumsResponse>(
      data: TagGetTopAlbumsResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<TagGetTopArtistsResponse>> getTopArtists(String tag, {
    int limit=50, int page=1,
  }) async {
      
    var params = {
      METHOD: 'tag.getTopArtists',
      TAG: tag,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    var resp = await makeRequest(params);

    return resp.copyWith<TagGetTopArtistsResponse>(
      data: TagGetTopArtistsResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<TagGetTopTagsResponse>> getTopTags() async {
      
    var params = {
      METHOD: 'tag.getTopTags',
    };

    var resp = await makeRequest(params, isGet: true);

    return resp.copyWith<TagGetTopTagsResponse>(
      data: TagGetTopTagsResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<TagGetTopTracksResponse>> getTopTracks(String tag, {
    int limit=50, int page=1,
  }) async {
      
    var params = {
      METHOD: 'tag.getTopTracks',
      TAG: tag,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    var resp = await makeRequest(params);

    return resp.copyWith<TagGetTopTracksResponse>(
      data: TagGetTopTracksResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<TagGetWeeklyChartListResponse>> getWeeklyChartList(String tag) async {
      
    var params = {
      METHOD: 'tag.getWeeklyChartList',
      TAG: tag,
    };

    var resp = await makeRequest(params);

    return resp.copyWith<TagGetWeeklyChartListResponse>(
      data: TagGetWeeklyChartListResponse.fromJson(resp.data)
    );
  }
}