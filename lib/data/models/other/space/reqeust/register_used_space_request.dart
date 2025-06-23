import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_used_space_request.freezed.dart';
part 'register_used_space_request.g.dart';

@freezed
abstract class RegisterUsedSpaceRequest with _$RegisterUsedSpaceRequest{
  factory RegisterUsedSpaceRequest({
    required String space_id,
  }) = _RegisterUsedSpaceRequest;

  factory RegisterUsedSpaceRequest.fromJson(Map<String, dynamic> json) => _$RegisterUsedSpaceRequestFromJson(json);
}