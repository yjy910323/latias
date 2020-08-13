// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Index _$IndexFromJson(Map<String, dynamic> json) {
  return Index(
      name: json['name'] as String,
      metrics: (json['metrics'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(
            k, e == null ? null : Metric.fromJson(e as Map<String, dynamic>)),
      ));
}

Map<String, dynamic> _$IndexToJson(Index instance) =>
    <String, dynamic>{'name': instance.name, 'metrics': instance.metrics};
