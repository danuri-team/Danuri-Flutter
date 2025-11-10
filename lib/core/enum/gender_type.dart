import 'package:json_annotation/json_annotation.dart';

enum GenderType {
  @JsonValue('MALE')
  MALE,
  @JsonValue('FEMALE')
  FEMALE,
}