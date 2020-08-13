// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotaModular.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuotaModular _$QuotaModularFromJson(Map<String, dynamic> json) {
  return QuotaModular(
      name: json['name'] as String,
      type: json['type'] as String,
      indexes: (json['indexes'] as List)
          ?.map((e) =>
              e == null ? null : Index.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$QuotaModularToJson(QuotaModular instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'indexes': instance.indexes
    };
