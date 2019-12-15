import 'dart:convert';

class LastFmError {

  static const int _invalidServiceId = 2;
  static const int _invalidMethodId = 3;
  static const int _authFailedId = 4;
  static const int _invalidFormatId = 5;
  static const int _invalidParamsId = 6;
  static const int _invalidResourceId = 7;
  static const int _operationFailedId = 8;
  static const int _invalidSessionKeyId = 9;
  static const int _invalidApiKeyId = 10;
  static const int _serviceOfflineId = 11;
  static const int _invalidMethodSigId = 13;
  static const int _tempErrorId = 16;
  static const int _suspendedApiKeyId = 26;
  static const int _rateLimitedId = 29;

  static const LastFmError INVALID_SERVICE = const LastFmError._private(_invalidServiceId, 'This service does not exist.');
  static const LastFmError INVALID_METHOD = const LastFmError._private(_invalidMethodId, 'No method with that name in this package.');
  static const LastFmError AUTH_FAILED = const LastFmError._private(_authFailedId, 'You do not have permissions to access the service.');
  static const LastFmError INVALID_FORMAT = const LastFmError._private(_invalidFormatId, 'This service doesn\'t exist in that format.');
  static const LastFmError INVALID_PARAMETERS = const LastFmError._private(_invalidParamsId, 'Your request is missing a required parameter.');
  static const LastFmError INVALID_RESOURCE = const LastFmError._private(_invalidResourceId, 'Invalid resource specified.');
  static const LastFmError OPERATION_FAILED = const LastFmError._private(_operationFailedId, 'Something else is wrong.');
  static const LastFmError INVALID_SESSION_KEY = const LastFmError._private(_invalidSessionKeyId, 'Please re-authenticate');
  static const LastFmError INVALID_API_KEY = const LastFmError._private(_invalidApiKeyId, 'You must be granted a valid key by last.fm.');
  static const LastFmError SERVICE_OFFLINE = const LastFmError._private(_serviceOfflineId, 'This service is temporarily offline. Try again later.');
  static const LastFmError INVALID_METHOD_SIGNATURE = const LastFmError._private(_invalidMethodSigId, 'Invalid Method Signature applied.');
  static const LastFmError TEMPORARY_ERROR = const LastFmError._private(_tempErrorId, 'There was a temporary error processing your request. Please try again.');
  static const LastFmError SUSPENDED_API_KEY = const LastFmError._private(_suspendedApiKeyId, 'Access for your account has been suspended, please contact Last.fm.');
  static const LastFmError RATE_LIMIT_EXCEEDED = const LastFmError._private(_rateLimitedId, 'Your IP has made too many requests in a short period.');

  static const LastFmError UNKNOWN = const LastFmError._private(0, 'Unknown error code');

  final int id;
  final String message;
  const LastFmError._private(this.id, this.message);

  Map toMap() {
    return {
      'id': id,
      'message': message
    };
  }

  String toJson() {
    return json.encode(this.toMap());
  }

  static Map<int, LastFmError> codeMap = {
    _invalidServiceId: INVALID_SERVICE,
    _invalidMethodId: INVALID_METHOD,
    _authFailedId: AUTH_FAILED,
    _invalidFormatId: INVALID_FORMAT,
    _invalidParamsId: INVALID_PARAMETERS,
    _invalidResourceId: INVALID_RESOURCE,
    _operationFailedId: OPERATION_FAILED,
    _invalidSessionKeyId: INVALID_SESSION_KEY,
    _invalidApiKeyId: INVALID_API_KEY,
    _serviceOfflineId: SERVICE_OFFLINE,
    _invalidMethodSigId: INVALID_METHOD_SIGNATURE,
    _tempErrorId: TEMPORARY_ERROR,
    _suspendedApiKeyId: SUSPENDED_API_KEY,
    _rateLimitedId: RATE_LIMIT_EXCEEDED
  };

  static LastFmError fromErrorCode(int code) {
    if (codeMap.containsKey(code)) {
      return codeMap[code];
    }

    return UNKNOWN;
  }

  static LastFmError fromMap(Map map) {
    return LastFmError._private(map['error'], map['message']);
  }
}