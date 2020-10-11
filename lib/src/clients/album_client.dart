part of clients;

class AlbumClient extends BaseClient {
  AlbumClient(RequestMethod requestMethod) : super(requestMethod);

  Future<LastFmResponse> addTags(String artist, String album, 
    List<String> tags
  ) async {

    var params = {
      METHOD: 'album.addTags',
      ALBUM: album,
      ARTIST: artist,
      TAGS: tags.join(','),
    };

    return makeRequest(params, authRequired: true);
  }

  Future<LastFmResponse> getInfo({String artist, String album,
    String mbid, String lang, bool autoCorrect=false, String user
  }) async {
      
    var params = {
      METHOD: 'album.getInfo',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };
    
    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    LastFmHelpers.addValueIfNotNull(params, ALBUM, album);
    LastFmHelpers.addValueIfNotNull(params, USER, user);
    LastFmHelpers.addValueIfNotNull(params, LANG, lang);

    return makeRequest(params);
  }

  Future<LastFmResponse> getTags({String artist, String album,
    String mbid, bool autoCorrect=false, String user
  }) async {
      
    var params = {
      METHOD: 'album.getTags',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };
    
    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    LastFmHelpers.addValueIfNotNull(params, ALBUM, album);
    LastFmHelpers.addValueIfNotNull(params, USER, user);

    return makeRequest(params);
  }

  Future<LastFmResponse> getTopTags({String artist, String album,
    String mbid, bool autoCorrect=false
  }) async {
      
    var params = {
      METHOD: 'album.getTopTags',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };
    
    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    LastFmHelpers.addValueIfNotNull(params, ALBUM, album);

    return makeRequest(params);
  }

  Future<LastFmResponse> removeTag(String artist, String album, 
    String tag,
  ) async {

    var params = {
      METHOD: 'album.removeTag',
      ALBUM: album,
      ARTIST: artist,
      TAG: tag,
    };

    return makeRequest(params, authRequired: true);
  }

  Future<LastFmResponse> search(String album, {
    int limit=30, int page=0
  }) async {
      
    var params = {
      METHOD: 'album.search',
      ALBUM: album,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    return makeRequest(params);
  }
}