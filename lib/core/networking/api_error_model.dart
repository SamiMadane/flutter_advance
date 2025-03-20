import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  @JsonKey(name: 'data')
  final dynamic errors; // يمكن أن يكون Map أو List

  ApiErrorModel({
    this.message,
    this.code,
    this.errors,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  /// **تجميع كل رسائل الخطأ بطريقة مرنة**
  String getAllErrorMessages() {
    if (errors == null || (errors is List && errors.isEmpty)) {
      return message ?? "Unknown error occurred";
    }

    if (errors is Map<String, dynamic>) {
      return (errors as Map<String, dynamic>).entries.map((entry) {
        return "${entry.value.join(', ')}";
      }).join('\n');
    }

    return message ?? "Unknown error occurred";
  }
}