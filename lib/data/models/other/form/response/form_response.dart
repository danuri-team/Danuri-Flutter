import 'package:json_annotation/json_annotation.dart';

part 'form_response.g.dart';

@JsonSerializable()
class FormResponse {
  final String id;
  final String title;
  final Map<String, dynamic> schema;

  FormResponse({
    required this.id,
    required this.title,
    required this.schema,
  });

  factory FormResponse.fromJson(Map<String, dynamic> json) =>
      _$FormResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FormResponseToJson(this);
}