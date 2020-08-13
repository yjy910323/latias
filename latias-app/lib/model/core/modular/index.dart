import 'package:json_annotation/json_annotation.dart';

import 'metric.dart';

part 'index.g.dart';

@JsonSerializable()
class Index {
  String name;
  List<Metric> metrics;

  Index({this.name, this.metrics});

  factory Index.fromJson(Map<String, dynamic> json) => _$IndexFromJson(json);
  Map<String, dynamic> toJson() => _$IndexToJson(this);
}
