part of clients;

class ChartClient extends BaseClient {
  ChartClient(RequestMethod requestMethod) : super(requestMethod);

  Future<LastFmResponse> getTopArtists({
    int limit=50, int page=1
  }) async {
      
    var params = {
      METHOD: 'chart.getTopArtists',
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getTopTags({
    int limit=50, int page=1
  }) async {
      
    var params = {
      METHOD: 'chart.getTopTags',
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getTopTracks({
    int limit=50, int page=1
  }) async {
      
    var params = {
      METHOD: 'chart.getTopTracks',
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }
}