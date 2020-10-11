part of clients;

class TrackClient extends BaseClient {
  TrackClient(RequestMethod requestMethod) : super(requestMethod);

  Future<LastFmResponse> getTags({String artist, String trackName,
    String mbid, bool autoCorrect = false, String user
  }) async {
    var params = {
      AUTOCORRECT: LastFmHelpers.boolToIntString(autoCorrect),
      METHOD: 'track.getTags',
    };

    LastFmHelpers.addValueIfNotNull(params, MBID, mbid);
    LastFmHelpers.addValueIfNotNull(params, USER, user);
    LastFmHelpers.addValueIfNotNull(params, ARTIST, artist);
    LastFmHelpers.addValueIfNotNull(params, TRACK, trackName);

    return makeRequest(params, authRequired: user == null);
  }
}