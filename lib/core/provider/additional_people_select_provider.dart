import 'package:danuri_flutter/core/enum/age_group_type.dart';
import 'package:danuri_flutter/core/enum/gender_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final genderTypeProvider = StateProvider<GenderType>(
  (ref) => GenderType.MALE,
);

final additionalPeopleSelectProvider = StateNotifierProvider<
    AdditionalPeopleSelectNotifier, Map<GenderType, Map<AgeGroupType, int>>>(
  (ref) => AdditionalPeopleSelectNotifier(),
);

class AdditionalPeopleSelectNotifier
    extends StateNotifier<Map<GenderType, Map<AgeGroupType, int>>> {
  AdditionalPeopleSelectNotifier()
      : super(
          {
            GenderType.MALE: {
              AgeGroupType.ELEMENTARY: 0,
              AgeGroupType.MIDDLE: 0,
              AgeGroupType.HIGH: 0,
              AgeGroupType.UNIVERCITY: 0,
              AgeGroupType.OUT_OF_SCHOOL_YOUTH: 0,
              AgeGroupType.ADULTANDINFANT: 0,
            },
            GenderType.FEMALE: {
              AgeGroupType.ELEMENTARY: 0,
              AgeGroupType.MIDDLE: 0,
              AgeGroupType.HIGH: 0,
              AgeGroupType.UNIVERCITY: 0,
              AgeGroupType.OUT_OF_SCHOOL_YOUTH: 0,
              AgeGroupType.ADULTANDINFANT: 0,
            }
          },
        );

  void reset() {
    state = {
      GenderType.MALE: {
        AgeGroupType.ELEMENTARY: 0,
        AgeGroupType.MIDDLE: 0,
        AgeGroupType.HIGH: 0,
        AgeGroupType.UNIVERCITY: 0,
        AgeGroupType.OUT_OF_SCHOOL_YOUTH: 0,
        AgeGroupType.ADULTANDINFANT: 0,
      },
      GenderType.FEMALE: {
        AgeGroupType.ELEMENTARY: 0,
        AgeGroupType.MIDDLE: 0,
        AgeGroupType.HIGH: 0,
        AgeGroupType.UNIVERCITY: 0,
        AgeGroupType.OUT_OF_SCHOOL_YOUTH: 0,
        AgeGroupType.ADULTANDINFANT: 0,
      }
    };
  }

  addingPerson(GenderType gender, AgeGroupType ageGroup) {
    final copyState = Map<GenderType, Map<AgeGroupType, int>>.from(state);
    copyState[gender]!.update(
      ageGroup,
      (value) => value + 1,
    );
    state = copyState;
  }

  reducingPeople(GenderType gender, AgeGroupType ageGroup) {
    if (state[gender]![ageGroup]! > 0) {
      final copyState = Map<GenderType, Map<AgeGroupType, int>>.from(state);
      copyState[gender]!.update(
        ageGroup,
        (value) => value - 1,
      );
      state = copyState;
    }
  }
}
