import 'package:danuri_flutter/data/models/admin/user_management/response/user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internal_user_response.freezed.dart';
part 'internal_user_response.g.dart';

@freezed
abstract class InternalUserResponse with _$InternalUserResponse{
  factory InternalUserResponse({
    required List<UserResponse> users,
  }) = _InternalUserResponse;

  factory InternalUserResponse.fromJson(Map<String, dynamic> json) => _$InternalUserResponseFromJson(json);
}