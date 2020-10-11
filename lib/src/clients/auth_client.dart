part of clients;


class AuthClient extends BaseClient {
  AuthClient(RequestMethod requestMethod) : super(requestMethod);
  
  Future<UserSession> getMobileSession(String userName, String password) async {
    var params = {
      PASSWORD: password,
      USERNAME: userName,
      METHOD: 'auth.getMobileSession'
    };

    var response = await makeRequest(params, sign: true);

    return UserSession.fromLastFmResponse(response);
  }
}