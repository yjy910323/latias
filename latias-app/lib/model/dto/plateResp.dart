import 'package:json_annotation/json_annotation.dart';
import 'package:latias/model/core/plateDefination.dart';
import 'package:latias/model/dto/response.dart';

part 'plateResp.g.dart';

@JsonSerializable()
class PlateResp extends Response {

  PlateDefination data;

  PlateResp(String message, String code, String status) : super(message, code, status);
  
  factory PlateResp.fromJson(Map<String, dynamic> json) =>
      _$PlateRespFromJson(json);

  Map<String, dynamic> toJson() => _$PlateRespToJson(this);
}