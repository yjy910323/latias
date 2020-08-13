import 'package:json_annotation/json_annotation.dart';
import 'package:latias/model/core/modular/figure.dart';

part 'metric.g.dart';

@JsonSerializable()
class Metric {
  String name;
  Figure value;
  Figure onVlaue;
  Figure ratio;
  Figure diff;

  Metric({this.name, this.value, this.onVlaue, this.ratio, this.diff});

  factory Metric.fromJson(Map<String, dynamic> json) => _$MetricFromJson(json);
  Map<String, dynamic> toJson() => _$MetricToJson(this);
}
