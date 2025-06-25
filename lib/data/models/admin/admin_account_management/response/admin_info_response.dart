import 'package:danuri_flutter/data/models/enum/role_type.dart';
import 'package:danuri_flutter/data/models/enum/status_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_info_response.g.dart';

@JsonSerializable()
class AdminInfoResponse {
  final String id;
  @JsonKey(name: 'company_id')
  final String companyId;
  @JsonKey(name: 'company_name')
  final String companyName;
  final String email;
  final String phone;
  final RoleType role;
  final StatusType status;

  AdminInfoResponse({
    required this.id,
    required this.companyId,
    required this.companyName,
    required this.email,
    required this.phone,
    required this.role,
    required this.status,
  });

  factory AdminInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminInfoResponseToJson(this);
}
