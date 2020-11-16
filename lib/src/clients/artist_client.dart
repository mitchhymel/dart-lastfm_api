part of clients;

class ArtistClient extends BaseClient {
  ArtistClient(RequestMethod requestMethod) : super(requestMethod);
  
  Future<LastFmResponse> addTags(String artist, List<String> tags) async {

    var params = {
      METHOD: 'artist.addTags',
      ARTIST: artist,
      TAGS: tags.join(','),
    };

    return makeRequest(params, authRequired: true);
  }

  Future<LastFmResponse<ArtistGetCorrectionsResponse>> getCorrection(String artist) async {
      
    var params = {
      METHOD: 'artist.getCorrection',
      ARTIST: artist,
    };

    var resp = await makeRequest(params);

    return resp.copyWith<ArtistGetCorrectionsResponse>(
      data: ArtistGetCorrectionsResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<ArtistGetInfoResponse>> getInfo({String artist,
    String mbid, String lang, bool autoCorrect=false, String userName
  }) async {
      
    var params = {
      METHOD: 'artist.getInfo',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };
    
    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    LastFmHelpers.addValueIfNotNull(params, USERNAME, userName);
    LastFmHelpers.addValueIfNotNull(params, LANG, lang);

    var resp = await makeRequest(params);

    return resp.copyWith<ArtistGetInfoResponse>(
      data: ArtistGetInfoResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<ArtistGetSimilarResponse>> getSimilar({String artist,
    int limit=100, bool autoCorrect=false, String mbid
  }) async {
      
    var params = {
      METHOD: 'artist.getSimilar',
      LIMIT: limit.toString(),
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);

    var resp = await makeRequest(params);

    return resp.copyWith<ArtistGetSimilarResponse>(
      data: ArtistGetSimilarResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<ArtistGetTagsResponse>> getTags({String artist,
     String mbid, String user, bool autoCorrect=false,
  }) async {
    var params = {
      METHOD: 'artist.getTags',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };

    LastFmHelpers.addValueIfNotNull(params, USER, user);
    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);

    var resp = await makeRequest(params, authRequired: user != null);

    return resp.copyWith<ArtistGetTagsResponse>(
      data: ArtistGetTagsResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<ArtistGetTopAlbumsResponse>> getTopAlbums({String artist,
     String mbid, bool autoCorrect=false, int page=1, int limit=50
  }) async {
    var params = {
      METHOD: 'artist.getTopAlbums',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
      PAGE: page.toString(),
      LIMIT: limit.toString()
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);

    var resp = await makeRequest(params);

    return resp.copyWith<ArtistGetTopAlbumsResponse>(
      data: ArtistGetTopAlbumsResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse<ArtistGetTopTagsResponse>> getTopTags({String artist,
    String mbid, bool autoCorrect=false
  }) async {
    var params = {
      METHOD: 'artist.getTopTags',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);

    var resp = await makeRequest(params);

    return resp.copyWith<ArtistGetTopTagsResponse>(
      data: ArtistGetTopTagsResponse.fromJson(resp.data)
    );
  }
  
  Future<LastFmResponse<ArtistGetTopTracksResponse>> getTopTracks({String artist,
     String mbid, bool autoCorrect=false, int page=1, int limit=50
  }) async {
    var params = {
      METHOD: 'artist.getTopTracks',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);

    var resp = await makeRequest(params);

    return resp.copyWith<ArtistGetTopTracksResponse>(
      data: ArtistGetTopTracksResponse.fromJson(resp.data)
    );
  }

  Future<LastFmResponse> removeTag(String artist, String tag) async {
    var params = {
      METHOD: 'artist.removeTag',
      ARTIST: artist,
      TAG: tag,
    };

    return makeRequest(params, authRequired: true);
  }

  Future<LastFmResponse<ArtistSearchResponse>> search(String artist, {
    int limit=30, int page=1
  }) async {
      
    var params = {
      METHOD: 'artist.search',
      ARTIST: artist,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    var resp = await makeRequest(params);

    return resp.copyWith<ArtistSearchResponse>(
      data: ArtistSearchResponse.fromJson(resp.data)
    );
  }
}