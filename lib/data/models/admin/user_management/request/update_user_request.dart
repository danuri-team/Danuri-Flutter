import 'package:danuri_flutter/data/models/enum/role_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_user_request.g.dart';

@JsonSerializable()
class UpdateUserRequest {
  final String name;
  final String email;
  final String phone;
  final RoleType role;

  UpdateUserRequest({
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
  });

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserRequestToJson(this);
}
