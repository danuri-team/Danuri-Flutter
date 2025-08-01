import 'package:json_annotation/json_annotation.dart';

part 'space_response.g.dart';

@JsonSerializable()
class SpaceResponse{
final String id;
    final String name;
    @JsonKey(name:'start_at')
    final List<int> startAt;
    @JsonKey(name:'end_at')
    final List<int> endAt;
    @JsonKey(name:'usageCount')
    final int usageCount;

  SpaceResponse({
    required this.id,
    required this.name,
    required this.startAt,
    required this.endAt,
    required this.usageCount,
  });

  factory SpaceResponse.fromJson(Map<String, dynamic> json) => _$SpaceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceResponseToJson(this);
}