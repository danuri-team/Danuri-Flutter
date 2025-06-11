import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_space_request.freezed.dart';
part 'update_space_request.g.dart';

@freezed
abstract class UpdateSpaceRequest with _$UpdateSpaceRequest{
  factory UpdateSpaceRequest({
    required String name,
    required String startAt,
    required String endAt,
  }) = _UpdateSpaceRequest;

  factory UpdateSpaceRequest.fromJson(Map<String, dynamic> json) => _$UpdateSpaceRequestFromJson(json);
}