
import 'dart:convert';

import 'package:lastfmapi/src/enums/enums.dart';

class LastFmResponse {

  final int status;
  final LastFmError error;
  final dynamic data;

  LastFmResponse(this.status, this.error, this.data);

  Map toMap() {
    return {
      'status': status,
      'error': error,
      'data': data,
    };
  }

  String toString() {
    return this.toJson();
  }

  String toJson() {
    return json.encode(this.toMap());
  }
}