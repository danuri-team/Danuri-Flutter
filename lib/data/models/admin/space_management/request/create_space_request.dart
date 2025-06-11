import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_space_request.freezed.dart';
part 'create_space_request.g.dart';

@freezed
abstract class CreateSpaceRequest with _$CreateSpaceRequest{
  factory CreateSpaceRequest({
    required String name,
    required String startAt,
    required String endAt,
  }) = _CreateSpaceRequest;

  factory CreateSpaceRequest.fromJson(Map<String, dynamic> json) => _$CreateSpaceRequestFromJson(json);
}