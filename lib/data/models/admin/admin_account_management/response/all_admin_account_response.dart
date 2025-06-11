import 'package:danuri_flutter/data/models/admin/admin_account_management/response/my_info_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_admin_account_response.freezed.dart';
part 'all_admin_account_response.g.dart';

@freezed
abstract class AllAdminAccountResponse with _$AllAdminAccountResponse{
  factory AllAdminAccountResponse({
    required List<MyInfoResponse> allAdminAccounts
  }) = _AllAdminAccountResponse;

  factory AllAdminAccountResponse.fromJson(Map<String, dynamic> json) => _$AllAdminAccountResponseFromJson(json);
}
