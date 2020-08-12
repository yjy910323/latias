// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plateDefination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlateDefination _$PlateDefinationFromJson(Map<String, dynamic> json) {
  return PlateDefination(
      json['id'] as int,
      json['name'] as String,
      (json['modularDefinations'] as List)
          ?.map((e) => e == null
              ? null
              : ModularDefination.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$PlateDefinationToJson(PlateDefination instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'modularDefinations': instance.modularDefinations
    };
