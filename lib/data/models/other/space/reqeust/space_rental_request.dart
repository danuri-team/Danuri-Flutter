import 'package:danuri_flutter/core/enum/age_group_type.dart';
import 'package:danuri_flutter/core/enum/gender_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'space_rental_request.g.dart';

@JsonSerializable()
class SpaceRentalRequest {
  @JsonKey(name: 'space_id')
  final String spaceId;
  @JsonKey(name: 'start_at')
  final String startAt;
  @JsonKey(name: 'additional_participants')
  final List<AdditionalParticipants> additionalParticipants;

  SpaceRentalRequest({
    required this.spaceId,
    required this.startAt,
    required this.additionalParticipants,
  });

  factory SpaceRentalRequest.fromJson(Map<String, dynamic> json) =>
      _$SpaceRentalRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SpaceRentalRequestToJson(this);
}

@JsonSerializable()
class AdditionalParticipants {
  final GenderType sex;
  @JsonKey(name: 'age_group')
  final AgeGroupType ageGroup;
  final int count;

  const AdditionalParticipants({
    required this.sex,
    required this.ageGroup,
    required this.count,
  });

  factory AdditionalParticipants.fromJson(Map<String, dynamic> json) =>
      _$AdditionalParticipantsFromJson(json);

  Map<String, dynamic> toJson() => _$AdditionalParticipantsToJson(this);
}
