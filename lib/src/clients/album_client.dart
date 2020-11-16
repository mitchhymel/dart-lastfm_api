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

  Future<LastFmResponse<AlbumGetInfoResponse>> getInfo({String artist, 
    String album, String mbid, String lang, bool autoCorrect=false,
    String user
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

    var resp = await makeRequest(params);

    return resp.copyWith<AlbumGetInfoResponse>(
      data: AlbumGetInfoResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<AlbumGetTagsResponse>> getTags({String artist, String album,
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

    var resp = await makeRequest(params);

    return resp.copyWith<AlbumGetTagsResponse>(
      data: AlbumGetTagsResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<AlbumGetTopTagsResponse>> getTopTags({String artist, String album,
    String mbid, bool autoCorrect=false
  }) async {
      
    var params = {
      METHOD: 'album.getTopTags',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };
    
    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    LastFmHelpers.addValueIfNotNull(params, ALBUM, album);

    var resp = await makeRequest(params);

    return resp.copyWith<AlbumGetTopTagsResponse>(
      data: AlbumGetTopTagsResponse.fromJson(resp.data)
    );
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

  Future<LastFmResponse<AlbumSearchResponse>> search(String album, {
    int limit=30, int page=1
  }) async {
      
    var params = {
      METHOD: 'album.search',
      ALBUM: album,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    var resp = await makeRequest(params);

    return resp.copyWith<AlbumSearchResponse>(
      data: AlbumSearchResponse.fromJson(resp.data)
    );
  }
}