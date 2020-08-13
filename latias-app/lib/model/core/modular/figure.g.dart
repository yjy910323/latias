// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'figure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Figure _$FigureFromJson(Map<String, dynamic> json) {
  return Figure(
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      value: json['value'] as num);
}

Map<String, dynamic> _$FigureToJson(Figure instance) => <String, dynamic>{
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
      'value': instance.value
    };
