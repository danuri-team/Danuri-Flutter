import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_response.freezed.dart';
part 'space_response.g.dart';

@freezed
abstract class SpaceResponse with _$SpaceResponse{
  factory SpaceResponse({
    required String id,
    required String companyId,
    required String companyName,
    required String name,
    required List<int> startAt,
    required List<int> endAt,
    required int usageCount,
  }) = _SpaceResponse;

  factory SpaceResponse.fromJson(Map<String, dynamic> json) => _$SpaceResponseFromJson(json);
}