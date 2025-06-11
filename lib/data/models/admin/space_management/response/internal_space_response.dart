import 'package:danuri_flutter/data/models/admin/space_management/response/space_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internal_space_response.freezed.dart';
part 'internal_space_response.g.dart';

@freezed
abstract class InternalSpaceResponse with _$InternalSpaceResponse{
  factory InternalSpaceResponse({
    required List<SpaceResponse> spaces,
  }) = _InternalSpaceResponse;

  factory InternalSpaceResponse.fromJson(Map<String, dynamic> json) => _$InternalSpaceResponseFromJson(json);
}