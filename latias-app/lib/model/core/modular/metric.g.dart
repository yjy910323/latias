// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Metric _$MetricFromJson(Map<String, dynamic> json) {
  return Metric(
      name: json['name'] as String,
      value: json['value'] == null
          ? null
          : Figure.fromJson(json['value'] as Map<String, dynamic>),
      onVlaue: json['onVlaue'] == null
          ? null
          : Figure.fromJson(json['onVlaue'] as Map<String, dynamic>),
      ratio: json['ratio'] == null
          ? null
          : Figure.fromJson(json['ratio'] as Map<String, dynamic>),
      diff: json['diff'] == null
          ? null
          : Figure.fromJson(json['diff'] as Map<String, dynamic>));
}

Map<String, dynamic> _$MetricToJson(Metric instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'onVlaue': instance.onVlaue,
      'ratio': instance.ratio,
      'diff': instance.diff
    };
