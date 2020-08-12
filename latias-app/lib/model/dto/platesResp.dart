import 'package:json_annotation/json_annotation.dart';
import 'package:latias/model/core/plateDefination.dart';
import 'package:latias/model/dto/response.dart';

part 'platesResp.g.dart';

@JsonSerializable()
class PlatesResp extends Response {

  List<PlateDefination> data;

  PlatesResp(String message, String code, String status) : super(message, code, status);
  
  factory PlatesResp.fromJson(Map<String, dynamic> json) =>
      _$PlatesRespFromJson(json);

  Map<String, dynamic> toJson() => _$PlatesRespToJson(this);
}