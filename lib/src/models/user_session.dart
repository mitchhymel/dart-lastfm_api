part of models;


class UserSession extends BaseModel {

  final String userName;
  final String key;
  final int subscriber;
  UserSession({
    this.userName,
    this.key,
    this.subscriber
  });

  UserSession.fromMap(Map map) :
    userName = map[NAME],
    key = map[KEY],
    subscriber = map[SUBSCRIBER];

  @override
  Map toMap() => {
    NAME: userName,
    KEY: key,
    SUBSCRIBER: subscriber,
  };

  static UserSession fromLastFmResponse(LastFmResponse response) {
    if (response.error != null) {
        print(response.error);
        return null;
    }

    return UserSession.fromMap(response.data[SESSION]);
  }

}