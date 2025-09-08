import 'package:json_annotation/json_annotation.dart';

part 'form_request.g.dart';

@JsonSerializable()
class FormRequest {
  final Map<String, dynamic> schema;

  FormRequest({
    required this.schema,
  });

  factory FormRequest.fromJson(Map<String, dynamic> json) =>
      _$FormRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FormRequestToJson(this);
}