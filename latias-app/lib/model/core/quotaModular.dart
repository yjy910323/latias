import 'package:json_annotation/json_annotation.dart';

import 'modular/index.dart';

part 'quotaModular.g.dart';

@JsonSerializable()
class QuotaModular {
  String name;
  String type;
  List<Index> indexes;

  QuotaModular({this.name, this.type, this.indexes});

  factory QuotaModular.fromJson(Map<String, dynamic> json) =>
      _$QuotaModularFromJson(json);
  Map<String, dynamic> toJson() => _$QuotaModularToJson(this);
}
