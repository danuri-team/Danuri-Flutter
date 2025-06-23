import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_request.freezed.dart';
part 'space_request.g.dart';

@freezed
abstract class SpaceRequest with _$SpaceRequest{
  factory SpaceRequest({
    required String name,
    required String start_at,
    String? end_at,
  }) = _SpaceRequestRequest;

  factory SpaceRequest.fromJson(Map<String, dynamic> json) => _$SpaceRequestFromJson(json);
}