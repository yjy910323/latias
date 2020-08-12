import 'package:json_annotation/json_annotation.dart';

import 'modularDefination.dart';

part 'plateDefination.g.dart';

@JsonSerializable()
class PlateDefination {
  int id;
  String name;
  List<ModularDefination> modularDefinations;

  PlateDefination(this.id, this.name, this.modularDefinations);

  factory PlateDefination.fromJson(Map<String, dynamic> json) =>
      _$PlateDefinationFromJson(json);
  Map<String, dynamic> toJson() => _$PlateDefinationToJson(this);
}
