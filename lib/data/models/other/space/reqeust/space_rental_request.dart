import 'package:json_annotation/json_annotation.dart';

part 'space_rental_request.g.dart';

@JsonSerializable()
class SpaceRentalRequest {
  @JsonKey(name: 'space_id')
  final String spaceId;

  SpaceRentalRequest({
    required this.spaceId,
  });

  factory SpaceRentalRequest.fromJson(Map<String, dynamic> json) =>
      _$SpaceRentalRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceRentalRequestToJson(this);
}
