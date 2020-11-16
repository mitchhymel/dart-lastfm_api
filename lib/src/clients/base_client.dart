part of clients;

typedef RequestMethod = Future<LastFmResponse> Function(Map<String, String>, 
  bool, bool, bool);

abstract class BaseClient {
  final RequestMethod requestMethod;
  BaseClient(this.requestMethod);

  Future<LastFmResponse> makeRequest(Map<String, String> params, {
    bool sign=false, bool authRequired=false, bool isGet=false,
  }) => this.requestMethod(params, sign, authRequired, isGet);
}