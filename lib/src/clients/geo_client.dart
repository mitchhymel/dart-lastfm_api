part of clients;

class GeoClient extends BaseClient {
  GeoClient(RequestMethod requestMethod) : super(requestMethod);


  Future<LastFmResponse> getTopArtists(String country, {
    int limit=50, int page=1
  }) async {
      
    var params = {
      METHOD: 'geo.getTopArtists',
      COUNTRY: country,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getTopTracks(String country, {
    int limit=50, int page=1, String location
  }) async {
      
    var params = {
      METHOD: 'geo.getTopTracks',
      COUNTRY: country,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    LastFmHelpers.addValueIfNotNull(params, LOCATION, location);

    return makeRequest(params);
  }
}