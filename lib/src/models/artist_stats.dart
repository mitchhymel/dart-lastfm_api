part of models;

class ArtistStats extends BaseModel{
  final int listeners;
  final int playCount;
  final int userPlayCount;

  ArtistStats({this.listeners, this.playCount, this.userPlayCount});
  
  ArtistStats.fromMap(Map map) :
    listeners = LastFmHelpers.parseIntIfContainsKey(map, LISTENERS),
    playCount = LastFmHelpers.parseIntIfContainsKey(map, PLAYCOUNT),
    userPlayCount = LastFmHelpers.parseIntIfContainsKey(map, USERPLAYCOUNT);

  @override
  Map toMap() => {
    LISTENERS: listeners,
    PLAYCOUNT: playCount,
    USERPLAYCOUNT: userPlayCount,
  };
}