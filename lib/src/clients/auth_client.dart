part of clients;


class AuthClient extends BaseClient {
  AuthClient(RequestMethod requestMethod) : super(requestMethod);
  
  Future<UserSession> getMobileSession(String userName, String password) async {
    var params = {
      METHOD: 'auth.getMobileSession',
      PASSWORD: password,
      USERNAME: userName,
    };

    var response = await makeRequest(params, sign: true);

    return UserSession.fromJson(response.data[SESSION]);
  }

  Future<LastFmResponse> getSession(String token) async {
    var params = {
      METHOD: 'auth.getSession',
      TOKEN: token,
    };

    return makeRequest(params, sign: true);
  }

  Future<LastFmResponse> getToken() async {
    var params = {
      METHOD: 'auth.gettoken',
    };

    return makeRequest(params, sign: true);
  }
}