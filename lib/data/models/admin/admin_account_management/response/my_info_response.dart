import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_info_response.freezed.dart';
part 'my_info_response.g.dart';

@freezed
abstract class MyInfoResponse with _$MyInfoResponse{
  factory MyInfoResponse({
    required String id,
    required String companyId,
    required String companyName,
    required String email,
    required String phone,
    required String role,
    required String status,
  }) = _MyInfoResponse;

  factory MyInfoResponse.fromJson(Map<String, dynamic> json) => _$MyInfoResponseFromJson(json);
}