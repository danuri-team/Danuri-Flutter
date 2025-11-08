// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_rental_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceRentalRequest _$SpaceRentalRequestFromJson(Map<String, dynamic> json) =>
    SpaceRentalRequest(
      spaceId: json['space_id'] as String,
      startAt: json['start_at'] as String,
      additionalParticipants: (json['additional_participants'] as List<dynamic>)
          .map(
              (e) => AdditionalParticipants.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpaceRentalRequestToJson(SpaceRentalRequest instance) =>
    <String, dynamic>{
      'space_id': instance.spaceId,
      'start_at': instance.startAt,
      'additional_participants': instance.additionalParticipants,
    };

AdditionalParticipants _$AdditionalParticipantsFromJson(
        Map<String, dynamic> json) =>
    AdditionalParticipants(
      sex: $enumDecode(_$GenderTypeEnumMap, json['sex']),
      ageGroup: $enumDecode(_$AgeGroupTypeEnumMap, json['age_group']),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$AdditionalParticipantsToJson(
        AdditionalParticipants instance) =>
    <String, dynamic>{
      'sex': _$GenderTypeEnumMap[instance.sex]!,
      'age_group': _$AgeGroupTypeEnumMap[instance.ageGroup]!,
      'count': instance.count,
    };

const _$GenderTypeEnumMap = {
  GenderType.MALE: 'MALE',
  GenderType.FEMALE: 'FEMALE',
};

const _$AgeGroupTypeEnumMap = {
  AgeGroupType.ELEMENTARY: 'ELEMENTARY',
  AgeGroupType.MIDDLE: 'MIDDLE',
  AgeGroupType.HIGH: 'HIGH',
  AgeGroupType.OUT_OF_SCHOOL_YOUTH: 'OUT_OF_SCHOOL_YOUTH',
  AgeGroupType.ADULT: 'ADULT',
};
