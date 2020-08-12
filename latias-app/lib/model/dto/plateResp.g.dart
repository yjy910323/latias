// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plateResp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlateResp _$PlateRespFromJson(Map<String, dynamic> json) {
  return PlateResp(json['message'] as String, json['code'] as String,
      json['status'] as String)
    ..data = json['data'] == null
        ? null
        : PlateDefination.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PlateRespToJson(PlateResp instance) => <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'data': instance.data
    };
