import 'package:json_annotation/json_annotation.dart';
import 'package:latias/model/core/quotaModular.dart';
import 'package:latias/model/dto/response.dart';

part 'quotaModularResp.g.dart';

@JsonSerializable()
class QuotaModularResp extends Response {
  QuotaModular data;

  QuotaModularResp(String message, String code, String status)
      : super(message, code, status);

  factory QuotaModularResp.fromJson(Map<String, dynamic> json) =>
      _$QuotaModularRespFromJson(json);

  Map<String, dynamic> toJson() => _$QuotaModularRespToJson(this);
}
