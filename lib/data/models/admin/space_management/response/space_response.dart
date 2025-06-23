import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_response.freezed.dart';
part 'space_response.g.dart';

@freezed
abstract class SpaceResponse with _$SpaceResponse{
  factory SpaceResponse({
    required String id,
    required String name,
    required List<int> start_at,
    required List<int> end_at,
    required int usage_count,
  }) = _SpaceResponse;

  factory SpaceResponse.fromJson(Map<String, dynamic> json) => _$SpaceResponseFromJson(json);
}