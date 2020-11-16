
import 'dart:convert';

import 'package:lastfm/lastfm_api.dart';
import 'package:lastfm/src/enums/enums.dart';

class LastFmResponse<T> {

  final int status;
  final LastFmError error;
  final T data;

  LastFmResponse({
    this.status, 
    this.error, 
    this.data
  });
  LastFmResponse<T> copyWith<T>({
    int status,
    LastFmError error,
    T data,
  }) => LastFmResponse<T>(
    status: status ?? this.status,
    error: error ?? this.error,
    data: data ?? this.data,
  );

  bool isSuccess() => status == 200 && error == null && data != null;

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

  String toPrettyJson() {
    return LastFmHelpers.getPrettyStringFromMap(this.toMap());
  }
}