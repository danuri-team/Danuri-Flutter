import 'package:json_annotation/json_annotation.dart';

part 'form_request.g.dart';

@JsonSerializable()
class FormRequest {
  final String result;

  FormRequest({
    required this.result,
  });

  factory FormRequest.fromJson(Map<String, dynamic> json) =>
      _$FormRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FormRequestToJson(this);
}