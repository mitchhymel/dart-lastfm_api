

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:lastfm/lastfm_api.dart';
import 'package:lastfm/src/enums/enums.dart';
import 'package:lastfm/src/models/models.dart';

part 'lastfm_response.g.dart';

@JsonSerializable(includeIfNull: false)
class LastFmResponse {

  final int status;
  final LastFmError error;
  final LastFmResponseData data;

  LastFmResponse({
    this.status, 
    this.error, 
    this.data
  });
  factory LastFmResponse.fromJson(Map<String, dynamic> json) =>
    _$LastFmResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LastFmResponseToJson(this);

  bool isSuccess() => status == 200 && data != null && error == null;
  bool hasError() => !isSuccess();

  String toPrettyJson() {
    return LastFmHelpers.getPrettyStringFromMap(this.toJson());
  }

  @override
  String toString() => jsonEncode(toJson());
}