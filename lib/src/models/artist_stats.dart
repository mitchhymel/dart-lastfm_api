part of models;

class ArtistStats extends BaseModel{
  final int listeners;
  final int playCount;
  final int userPlayCount;

  ArtistStats({this.listeners, this.playCount, this.userPlayCount});
  
  ArtistStats.fromMap(Map map) :
    listeners = int.parse(map[LISTENERS]),
    playCount = int.parse(map[PLAYCOUNT]),
    userPlayCount = map.containsKey(USERPLAYCOUNT) ? 
      int.parse(map[USERPLAYCOUNT]) : -1;

  @override
  Map toMap() => {
    LISTENERS: listeners,
    PLAYCOUNT: playCount,
    USERPLAYCOUNT: userPlayCount,
  };
}