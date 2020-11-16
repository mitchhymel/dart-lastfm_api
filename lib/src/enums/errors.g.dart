// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LastFmError _$LastFmErrorFromJson(Map<String, dynamic> json) {
  return LastFmError(
    id: json['id'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$LastFmErrorToJson(LastFmError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('message', instance.message);
  return val;
}
