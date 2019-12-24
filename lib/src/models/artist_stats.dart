part of models;

class ArtistStats extends BaseModel{
  final int listeners;
  final int playCount;
  final int userPlayCount;

  ArtistStats({this.listeners, this.playCount, this.userPlayCount});
  
  ArtistStats.fromMap(Map map) :
    listeners = int.parse(map['listeners']),
    playCount = int.parse(map['playCount']),
    userPlayCount = map['userPlayCount'] ? 
      int.parse(map['userPlayCount']) : -1;

  @override
  Map toMap() => {
    'listeners': listeners,
    'playCount': playCount,
    'userPlayCount': userPlayCount,
  };
}