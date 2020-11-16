part of clients;

class ChartClient extends BaseClient {
  ChartClient(RequestMethod requestMethod) : super(requestMethod);

  Future<LastFmResponse<ChartGetTopArtistsResponse>> getTopArtists({
    int limit=50, int page=1
  }) async {
      
    var params = {
      METHOD: 'chart.getTopArtists',
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    var resp = await makeRequest(params);

    return resp.copyWith<ChartGetTopArtistsResponse>(
      data: ChartGetTopArtistsResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<ChartGetTopTagsResponse>> getTopTags({
    int limit=50, int page=1
  }) async {
      
    var params = {
      METHOD: 'chart.getTopTags',
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    var resp = await makeRequest(params);

    return resp.copyWith<ChartGetTopTagsResponse>(
      data: ChartGetTopTagsResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<ChartGetTopTracksResponse>> getTopTracks({
    int limit=50, int page=1
  }) async {
      
    var params = {
      METHOD: 'chart.getTopTracks',
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    var resp = await makeRequest(params);

    return resp.copyWith<ChartGetTopTracksResponse>(
      data: ChartGetTopTracksResponse.fromJson(resp.data)
    );
  }
}