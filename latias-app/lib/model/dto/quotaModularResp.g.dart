// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotaModularResp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuotaModularResp _$QuotaModularRespFromJson(Map<String, dynamic> json) {
  return QuotaModularResp(json['message'] as String, json['code'] as String,
      json['status'] as String)
    ..data = json['data'] == null
        ? null
        : QuotaModular.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$QuotaModularRespToJson(QuotaModularResp instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'data': instance.data
    };
