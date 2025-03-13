import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';


// JsonSerializable is used to automatically generate code for formJson and toJson.
@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;

  ApiErrorModel({
    required this.message,
    this.code,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
