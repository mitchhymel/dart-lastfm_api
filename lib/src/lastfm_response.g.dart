// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lastfm_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastFmResponse _$LastFmResponseFromJson(Map<String, dynamic> json) {
  return LastFmResponse(
    status: json['status'] as int,
    error: json['error'] == null
        ? null
        : LastFmError.fromJson(json['error'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : LastFmResponseData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LastFmResponseToJson(LastFmResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('error', instance.error);
  writeNotNull('data', instance.data);
  return val;
}
