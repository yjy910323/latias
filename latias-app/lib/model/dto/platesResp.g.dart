// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platesResp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatesResp _$PlatesRespFromJson(Map<String, dynamic> json) {
  return PlatesResp(json['message'] as String, json['code'] as String,
      json['status'] as String)
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : PlateDefination.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PlatesRespToJson(PlatesResp instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'data': instance.data
    };
