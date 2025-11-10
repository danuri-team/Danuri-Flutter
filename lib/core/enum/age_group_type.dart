import 'package:json_annotation/json_annotation.dart';

enum AgeGroupType {
  @JsonValue('ELEMENTARY')
  ELEMENTARY,
  @JsonValue('MIDDLE')
  MIDDLE,
  @JsonValue('HIGH')
  HIGH,
  @JsonValue('OUT_OF_SCHOOL_YOUTH')
  OUT_OF_SCHOOL_YOUTH,
  @JsonValue('ADULT')
  ADULT,
}