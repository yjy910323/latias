import 'package:json_annotation/json_annotation.dart';

part 'modularDefination.g.dart';

@JsonSerializable()
class ModularDefination {
  int id;
  String name;
  bool nameVisible;
  String type;
  List<String> metrics;

  ModularDefination(this.id, this.name, this.nameVisible, this.type, this.metrics);

factory ModularDefination.fromJson(Map<String, dynamic> json) => _$ModularDefinationFromJson(json);
  Map<String, dynamic> toJson() => _$ModularDefinationToJson(this);
}
