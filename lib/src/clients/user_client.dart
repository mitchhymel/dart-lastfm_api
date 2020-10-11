part of clients;

class UserClient extends BaseClient {
  UserClient(RequestMethod makeRequest) : super(makeRequest);

  Future<LastFmResponse> getFriends(String user, {
    bool recenttracks=false, int limit=50, int page=1 
  }) async {
    var params = {
      METHOD: 'user.getfriends',
      USER: user,
      RECENT_TRACKS: LastFmHelpers.boolToIntString(recenttracks),
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getInfo(String user) async {
    var params = {
      METHOD: 'user.getInfo',
      USER: user,
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getLovedTracks(String user, {
    int limit=50, int page=1
  }) async {
    var params = {
      METHOD: 'user.getLovedTracks',
      USER: user,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getPersonalTags(String user, String tag, 
    String taggingType, { 
    int limit=50, int page=1
  }) async {
    var params = {
      METHOD: 'user.getPersonalTags',
      USER: user,
      TAG: tag,
      TAGGING_TYPE: taggingType,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getRecentTracks(String user, { 
    int limit=50, int page=1, int from, int to, bool extended=false,
  }) async {
    var params = {
      METHOD: 'user.getRecentTracks',
      USER: user,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
      EXTENDED: LastFmHelpers.boolToIntString(extended)
    };

    LastFmHelpers.addValueIfNotDefault(params, TO, to);
    LastFmHelpers.addValueIfNotDefault(params, FROM, from);

    return makeRequest(params);
  }

  /**
   * user (Required) : The user name to fetch top albums for.
   * period (Optional) : overall | 7day | 1month | 3month | 6month | 12month - The time period over which to retrieve top albums for.
   * limit (Optional) : The number of results to fetch per page. Defaults to 50.
   * page (Optional) : The page number to fetch. Defaults to first page.
   */
  Future<LastFmResponse> getTopAlbums(String user, { 
    int limit=50, int page=1, String period
  }) async {
    var params = {
      METHOD: 'user.getTopAlbums',
      USER: user,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    LastFmHelpers.addValueIfNotNull(params, PERIOD, period);

    return makeRequest(params);
  }

  /**
   * user (Required) : The user name to fetch top artists for.
   * period (Optional) : overall | 7day | 1month | 3month | 6month | 12month - The time period over which to retrieve top albums for.
   * limit (Optional) : The number of results to fetch per page. Defaults to 50.
   * page (Optional) : The page number to fetch. Defaults to first page.
   */
  Future<LastFmResponse> getTopArtists(String user, { 
    int limit=50, int page=1, String period
  }) async {
    var params = {
      METHOD: 'user.getTopArtists',
      USER: user,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    LastFmHelpers.addValueIfNotNull(params, PERIOD, period);

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
      METHOD: 'user.getTopTags',
      USER: user,
      LIMIT: limit.toString(),
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
    int limit=50, int page=1, String period
  }) async {
    var params = {
      METHOD: 'user.getTopTracks',
      USER: user,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    LastFmHelpers.addValueIfNotNull(params, PERIOD, period);

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
      METHOD: 'user.getWeeklyAlbumChart',
      USER: user,
    };

    LastFmHelpers.addValueIfNotDefault(params, TO, to);
    LastFmHelpers.addValueIfNotDefault(params, FROM, from);

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
      METHOD: 'user.getWeeklyArtistChart',
      USER: user,
    };

    LastFmHelpers.addValueIfNotDefault(params, TO, to);
    LastFmHelpers.addValueIfNotDefault(params, FROM, from);

    return makeRequest(params);
  }

  Future<LastFmResponse> getWeeklyChartList(String user) async {
    var params = {
      METHOD: 'user.getWeeklyChartList',
      USER: user,
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
      METHOD: 'user.getWeeklyTrackChart',
      USER: user,
    };

    LastFmHelpers.addValueIfNotDefault(params, TO, to);
    LastFmHelpers.addValueIfNotDefault(params, FROM, from);

    return makeRequest(params);
  }
}