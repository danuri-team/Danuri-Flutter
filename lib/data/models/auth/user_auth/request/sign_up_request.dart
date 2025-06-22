import 'package:danuri_flutter/data/models/admin/enum/age_type.dart';
import 'package:danuri_flutter/data/models/admin/enum/sex_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request.freezed.dart';
part 'sign_up_request.g.dart';

@freezed
abstract class SignUpRequest with _$SignUpRequest{
  factory SignUpRequest({
    required String companyId,
    required String name,
    required String phone,  
    required String sex,
    required String age,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);
}