part of clients;

class TrackClient extends BaseClient {
  TrackClient(RequestMethod requestMethod) : super(requestMethod);


  /**
   * Response is an empty map. Returns success even if you are trying
   * to add tags that the track already has
   */
  Future<LastFmResponse> addTags(String artist, String track, 
    List<String> tags
  ) async {

    var params = {
      METHOD: 'track.addTags',
      ARTIST: artist,
      TAGS: tags.join(','),
      TRACK: track,
    };

    return makeRequest(params, authRequired: true);
  }

  Future<LastFmResponse> getCorrection(String artist, String track) async {

    var params = {
      METHOD: 'track.getCorrection',
      ARTIST: artist,
      TRACK: track,
    };

    return makeRequest(params);
  }

  Future<LastFmResponse> getInfo({String artist, String track,
    String mbid, bool autoCorrect=false, String userName
  }) async {

    if (userName != null) {
      throw new UnimplementedError('This is not implemented because for some reason we get an empty response when username is supplied');
    }
      
    var params = {
      METHOD: 'track.getInfo',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };
    
    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    LastFmHelpers.addValueIfNotNull(params, TRACK, track);
    LastFmHelpers.addValueIfNotNull(params, USERNAME, userName);

    return makeRequest(params);
  }

  Future<LastFmResponse> getSimilar({String artist, String track, 
    String mbid, bool autoCorrect=false, int limit=50,
  }) async {
      
    var params = {
      METHOD: 'track.getSimilar',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
      LIMIT: limit.toString(),
    };
    
    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    LastFmHelpers.addValueIfNotNull(params, TRACK, track);

    return makeRequest(params);
  }

  Future<LastFmResponse> getTags({String artist, String track,
    String mbid, bool autoCorrect = false, String user
  }) async {
    var params = {
      METHOD: 'track.getTags',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, USER, user);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    LastFmHelpers.addValueIfNotNull(params, TRACK, track);

    return makeRequest(params, authRequired: user == null);
  }

  Future<LastFmResponse> getTopTags({String artist, String track,
    String mbid, bool autoCorrect = false,
  }) async {
    var params = {
      METHOD: 'track.getTopTags',
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    LastFmHelpers.addValueIfNotNull(params, TRACK, track);

    return makeRequest(params);
  }

  Future<LastFmResponse> love(String artist, String track) async {
    var params = {
      METHOD: 'track.love',
      ARTIST: artist,
      TRACK: track,
    };

    return makeRequest(params, authRequired: true);
  }

  /**
   * Response is an empty map. API returns success even if no tag was removed,
   * i.e. in the case where you try to remove a tag that the track does not have
   */
  Future<LastFmResponse> removeTag(String artist, String track, 
    String tag
  ) async {

    var params = {
      METHOD: 'track.removeTag',
      ARTIST: artist,
      TAG: tag,
      TRACK: track,
    };

    return makeRequest(params, authRequired: true);
  }

  Future<LastFmResponse> scrobble() async {

    throw new UnimplementedError('Not yet implemented');
    // var params = {
    //   METHOD: 'track.scrobble',
    // };

    // return makeRequest(params, authRequired: true);
  }

  Future<LastFmResponse> search(String track, {
    String artist, int limit=30, int page=1
  }) async {
      
    var params = {
      METHOD: 'track.search',
      TRACK: track,
      LIMIT: limit.toString(),
      PAGE: page.toString(),
    };

    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);

    return makeRequest(params);
  }

  Future<LastFmResponse> unlove(String artist, String track) async {
    var params = {
      METHOD: 'track.unlove',
      ARTIST: artist,
      TRACK: track,
    };

    return makeRequest(params, authRequired: true);
  }

  Future<LastFmResponse> updateNowPlaying({String artist, String track,
    String album, String mbid, int duration=0, String albumArtist,
    int trackNumber=0,
  }) async {
    throw new UnimplementedError('Not yet implemented');
    // var params = {
    //   METHOD: 'track.updateNowPlaying',
    // };

    // LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    // LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    // LastFmHelpers.addValueIfNotNull(params, TRACK, track);
    // LastFmHelpers.addValueIfNotNull(params, ALBUM, album);
    // LastFmHelpers.addValueIfNotNull(params, ALBUM_ARTIST, albumArtist);
    // LastFmHelpers.addValueIfNotDefault(params, DURATION, duration);
    // LastFmHelpers.addValueIfNotDefault(params, TRACK_NUMBER, trackNumber);

    // return makeRequest(params, authRequired: true);
  }
}