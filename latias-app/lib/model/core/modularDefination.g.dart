// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modularDefination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModularDefination _$ModularDefinationFromJson(Map<String, dynamic> json) {
  return ModularDefination(
      json['id'] as int,
      json['name'] as String,
      json['nameVisible'] as bool,
      json['type'] as String,
      (json['metrics'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$ModularDefinationToJson(ModularDefination instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameVisible': instance.nameVisible,
      'type': instance.type,
      'metrics': instance.metrics
    };
