part of models;

class AuthToken {

  final String token;
  final String url;
  AuthToken({this.token,this.url});

  AuthToken.fromMap(Map map, String apiKey) :
    token = map['token'],
    url = 'http://www.last.fm/api/auth/?api_key=${apiKey}&token=${map["token"]}';


  static AuthToken fromLastFmResponse(LastFmResponse response, String apiKey) {
    if (response.error != null) {
        print(response.error);
        return null;
    }

    String tok = response.data['token'];

    return new AuthToken(
      token: tok,
      url: 'http://www.last.fm/api/auth/?api_key=${apiKey}&token=${tok}'
    );
  }
}