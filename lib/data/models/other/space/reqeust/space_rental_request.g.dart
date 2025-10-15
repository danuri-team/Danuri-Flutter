// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_rental_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceRentalRequest _$SpaceRentalRequestFromJson(Map<String, dynamic> json) =>
    SpaceRentalRequest(
      spaceId: json['space_id'] as String,
      startAt: json['start_At'] as String,
    );

Map<String, dynamic> _$SpaceRentalRequestToJson(SpaceRentalRequest instance) =>
    <String, dynamic>{
      'space_id': instance.spaceId,
      'start_At': instance.startAt,
    };
