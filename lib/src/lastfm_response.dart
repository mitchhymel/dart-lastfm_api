
import 'dart:convert';

import 'package:lastfm/src/enums/enums.dart';

class LastFmResponse {

  final int status;
  final LastFmError error;
  final Map data;

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