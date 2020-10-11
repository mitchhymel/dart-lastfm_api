part of clients;

class UserClient extends BaseClient {
  UserClient(RequestMethod makeRequest) : super(makeRequest);

  Future<LastFmResponse> getFriends(String user, {
    bool recenttracks=false, int limit=50, int page=0 
  }) async {
    var params = {
      'method': 'user.getfriends',
      'user': 'user',
      'recenttracks': LastFmHelpers.boolToIntString(recenttracks),
      'limit': limit.toString(),
      'page': page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getInfo(String user) async {
    var params = {
      'method': 'user.getInfo',
      'user': 'user',
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getLovedTracks(String user, {
    int limit=50, int page=0
  }) async {
    var params = {
      'method': 'user.getLovedTracks',
      'user': 'user',
      'limit': limit.toString(),
      'page': page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getPersonalTags(String user, String tag, 
    String taggingType, { 
    int limit=50, int page=0
  }) async {
    var params = {
      'method': 'user.getPersonalTags',
      'user': 'user',
      'tag': tag,
      'taggingtype': taggingType,
      'limit': limit.toString(),
      'page': page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getRecentTracks(String user, { 
    int limit=50, int page=0, int from, int to, bool extended=false,
  }) async {
    var params = {
      'method': 'user.getRecentTracks',
      'user': 'user',
      'limit': limit.toString(),
      'page': page.toString(),
      'extended': LastFmHelpers.boolToIntString(extended)
    };

    LastFmHelpers.addValueIfNotDefault(params, 'to', to);
    LastFmHelpers.addValueIfNotDefault(params, 'from', from);

    return makeRequest(params);
  }

  /**
   * user (Required) : The user name to fetch top albums for.
   * period (Optional) : overall | 7day | 1month | 3month | 6month | 12month - The time period over which to retrieve top albums for.
   * limit (Optional) : The number of results to fetch per page. Defaults to 50.
   * page (Optional) : The page number to fetch. Defaults to first page.
   */
  Future<LastFmResponse> getTopAlbums(String user, { 
    int limit=50, int page=0, String period
  }) async {
    var params = {
      'method': 'user.getTopAlbums',
      'user': 'user',
      'limit': limit.toString(),
      'page': page.toString(),
    };

    LastFmHelpers.addValueIfNotNull(params, 'period', period);

    return makeRequest(params);
  }

  /**
   * user (Required) : The user name to fetch top artists for.
   * period (Optional) : overall | 7day | 1month | 3month | 6month | 12month - The time period over which to retrieve top albums for.
   * limit (Optional) : The number of results to fetch per page. Defaults to 50.
   * page (Optional) : The page number to fetch. Defaults to first page.
   */
  Future<LastFmResponse> getTopArtists(String user, { 
    int limit=50, int page=0, String period
  }) async {
    var params = {
      'method': 'user.getTopArtists',
      'user': 'user',
      'limit': limit.toString(),
      'page': page.toString(),
    };

    LastFmHelpers.addValueIfNotNull(params, 'period', period);

    return makeRequest(params);
  }

  /**
   * user (Required) : The user name
   * limit (Optional) : Limit the number of tags returned
   */
  Future<LastFmResponse> getTopTags(String user, { 
    int limit=50, 
  }) async {
    var params = {
      'method': 'user.getTopTags',
      'user': 'user',
      'limit': limit.toString(),
    };

    return makeRequest(params);
  }

  /**
   * user (Required) : The user name to fetch top tracks for.
   * period (Optional) : overall | 7day | 1month | 3month | 6month | 12month - The time period over which to retrieve top albums for.
   * limit (Optional) : The number of results to fetch per page. Defaults to 50.
   * page (Optional) : The page number to fetch. Defaults to first page.
   */
  Future<LastFmResponse> getTopTracks(String user, { 
    int limit=50, int page=0, String period
  }) async {
    var params = {
      'method': 'user.getTopTracks',
      'user': 'user',
      'limit': limit.toString(),
      'page': page.toString(),
    };

    LastFmHelpers.addValueIfNotNull(params, 'period', period);

    return makeRequest(params);
  }

  /**
   * user (Required) : The last.fm username to fetch the charts of.
   * from (Optional) : The date at which the chart should start from. See User.getChartsList for more.
   * to (Optional) : The date at which the chart should end on. See User.getChartsList for more.
   */
  Future<LastFmResponse> getWeeklyAlbumChart(String user, { 
    int from, int to
  }) async {
    var params = {
      'method': 'user.getWeeklyAlbumChart',
      'user': 'user',
    };

    LastFmHelpers.addValueIfNotDefault(params, 'to', to);
    LastFmHelpers.addValueIfNotDefault(params, 'from', from);

    return makeRequest(params);
  }

  /**
   * user (Required) : The last.fm username to fetch the artists  of.
   * from (Optional) : The date at which the chart should start from. See User.getChartsList for more.
   * to (Optional) : The date at which the chart should end on. See User.getChartsList for more.
   */
  Future<LastFmResponse> getWeeklyArtistChart(String user, { 
    int from, int to
  }) async {
    var params = {
      'method': 'user.getWeeklyArtistChart',
      'user': 'user',
    };

    LastFmHelpers.addValueIfNotDefault(params, 'to', to);
    LastFmHelpers.addValueIfNotDefault(params, 'from', from);

    return makeRequest(params);
  }

  Future<LastFmResponse> getWeeklyChartList(String user) async {
    var params = {
      'method': 'user.getWeeklyChartList',
      'user': 'user',
    };

    return makeRequest(params);
  }

  /**
   * user (Required) : The last.fm username to fetch the charts  of.
   * from (Optional) : The date at which the chart should start from. See User.getChartsList for more.
   * to (Optional) : The date at which the chart should end on. See User.getChartsList for more.
   */
  Future<LastFmResponse> getWeeklyTrackChart(String user, { 
    int from, int to
  }) async {
    var params = {
      'method': 'user.getWeeklyTrackChart',
      'user': 'user',
    };

    LastFmHelpers.addValueIfNotDefault(params, 'to', to);
    LastFmHelpers.addValueIfNotDefault(params, 'from', from);

    return makeRequest(params);
  }
}