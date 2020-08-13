import 'package:json_annotation/json_annotation.dart';

part 'figure.g.dart';

@JsonSerializable()
class Figure {
  DateTime start;
  DateTime end;
  num value;

  Figure({this.start, this.end, this.value});

  factory Figure.fromJson(Map<String, dynamic> json) => _$FigureFromJson(json);
  Map<String, dynamic> toJson() => _$FigureToJson(this);
}
