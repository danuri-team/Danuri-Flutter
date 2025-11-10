import 'package:danuri_flutter/core/enum/age_group_type.dart';
import 'package:danuri_flutter/core/enum/gender_type.dart';
import 'package:danuri_flutter/core/provider/additional_people_select_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderClassificationBar extends ConsumerWidget {
  const GenderClassificationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        const GenderChangeWidget(),
        const Spacer(),
        const NumberOfMaleAndFemailWidget(),
      ],
    );
  }
}

class GenderChangeWidget extends ConsumerWidget {
  const GenderChangeWidget({super.key});

  void genderChange(WidgetRef ref, GenderType gender) {
    ref.read(genderTypeProvider.notifier).update((state) => gender);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genderProvider = ref.watch(genderTypeProvider);
    return Row(
      children: [
        GestureDetector(
          onTap: () => genderChange(ref, GenderType.MALE),
          child: Container(
              width: 86.w,
              height: 46.h,
              alignment: Alignment.center,
              decoration: genderProvider == GenderType.MALE
                  ? BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 1, color: DanuriColor.static2),
                      ),
                    )
                  : null,
              child: Text(
                '남성',
                style: genderProvider == GenderType.MALE
                    ? DanuriText.heading1
                    : DanuriText.heading1.copyWith(color: DanuriColor.label3),
              )),
        ),
        GestureDetector(
          onTap: () => genderChange(ref, GenderType.FEMALE),
          child: Container(
              width: 86.w,
              height: 46.h,
              alignment: Alignment.center,
              decoration: genderProvider == GenderType.FEMALE
                  ? BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 1, color: DanuriColor.static2),
                      ),
                    )
                  : null,
              child: Text(
                '여성',
                style: genderProvider == GenderType.FEMALE
                    ? DanuriText.heading1
                    : DanuriText.heading1.copyWith(color: DanuriColor.label3),
              )),
        ),
      ],
    );
  }
}

class NumberOfMaleAndFemailWidget extends ConsumerStatefulWidget {
  const NumberOfMaleAndFemailWidget({super.key});

  @override
  ConsumerState<NumberOfMaleAndFemailWidget> createState() =>
      _NumberOfMaleAndFemailWidgetState();
}

class _NumberOfMaleAndFemailWidgetState
    extends ConsumerState<NumberOfMaleAndFemailWidget> {
  int numberOfMale = 0;
  int numberOfFemale = 0;

  changeInNumberOfPeople(
      Map<GenderType, Map<AgeGroupType, int>> additionalPeople) {
    int totalNumberOfMale = 0;
    additionalPeople[GenderType.MALE]!.values.toList().forEach(
          (element) => totalNumberOfMale += element,
        );
    numberOfMale = totalNumberOfMale;

    int totalNumberOfFemale = 0;
    additionalPeople[GenderType.FEMALE]!.values.toList().forEach(
          (element) => totalNumberOfFemale += element,
        );
    numberOfFemale = totalNumberOfFemale;
  }

  @override
  Widget build(BuildContext context) {
    final additionalPeopleProvider = ref.watch(additionalPeopleSelectProvider);
    changeInNumberOfPeople(additionalPeopleProvider);

    return Row(
      children: [
        Container(
          width: 24.r,
          height: 24.r,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: const Color(0xFF3385FF),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          '남성',
          style: DanuriText.headLine1.copyWith(
            color: DanuriColor.label3,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 16.w),
        Text(
          '$numberOfMale',
          style: DanuriText.headLine1.copyWith(
            color: DanuriColor.label3,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 15.w),
        Container(
          width: 24.r,
          height: 24.r,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: const Color(0xFFFA73E3),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          '여성',
          style: DanuriText.headLine1.copyWith(
            color: DanuriColor.label3,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 16.w),
        Text(
          '$numberOfFemale',
          style: DanuriText.headLine1.copyWith(
            color: DanuriColor.label3,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
