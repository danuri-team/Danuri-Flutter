import 'package:json_annotation/json_annotation.dart';

part 'space_request.g.dart';

@JsonSerializable()
class SpaceRequest {
  final String name;
  @JsonKey(name: 'start_at')
  final String startAt;
  @JsonKey(name: 'end_at')
  String? endAt;

  SpaceRequest({
    required this.name,
    required this.startAt,
    this.endAt,
  });

  factory SpaceRequest.fromJson(Map<String, dynamic> json) =>
      _$SpaceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceRequestToJson(this);
}
