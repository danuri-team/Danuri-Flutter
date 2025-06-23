import 'package:danuri_flutter/data/models/enum/role_type.dart';
import 'package:danuri_flutter/data/models/enum/status_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_info_response.freezed.dart';
part 'admin_info_response.g.dart';

@freezed
abstract class AdminInfoResponse with _$AdminInfoResponse{
  factory AdminInfoResponse({
    required String id,
    required String company_id,
    required String company_name,
    required String email,
    required String phone,
    required RoleType role,
    required StatusType status,
  }) = _AdminInfoResponseResponse;

  factory AdminInfoResponse.fromJson(Map<String, dynamic> json) => _$AdminInfoResponseFromJson(json);
}