part of clients;

class LibraryClient extends BaseClient {
  LibraryClient(RequestMethod requestMethod) : super(requestMethod);

  Future<LastFmResponse> getArtists(String user, {
    int limit=50, int page=1,
  }) async {
      
    var params = {
      METHOD: 'library.getArtists',
      USER: user,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }
}