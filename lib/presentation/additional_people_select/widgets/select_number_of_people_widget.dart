import 'package:danuri_flutter/core/enum/age_group_type.dart';
import 'package:danuri_flutter/core/enum/gender_type.dart';
import 'package:danuri_flutter/core/provider/additional_people_select_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SelectNumberOfPeopleWidget extends StatelessWidget {
  const SelectNumberOfPeopleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SelectPersonByAgeGroupWidget(
          ageGroup: AgeGroupType.ELEMENTARY,
        ),
        SizedBox(width: 65.w),
        SelectPersonByAgeGroupWidget(
          ageGroup: AgeGroupType.MIDDLE,
        ),
        SizedBox(width: 65.w),
        SelectPersonByAgeGroupWidget(
          ageGroup: AgeGroupType.HIGH,
        ),
        SizedBox(width: 65.w),
        SelectPersonByAgeGroupWidget(
          ageGroup: AgeGroupType.OUT_OF_SCHOOL_YOUTH,
        ),
        SizedBox(width: 65.w),
        SelectPersonByAgeGroupWidget(
          ageGroup: AgeGroupType.ADULT,
        ),
      ],
    );
  }
}

class SelectPersonByAgeGroupWidget extends ConsumerWidget {
  const SelectPersonByAgeGroupWidget({
    super.key,
    required this.ageGroup,
  });

  final AgeGroupType ageGroup;

  String ageGroupDivision(AgeGroupType ageGroup) {
    switch (ageGroup) {
      case AgeGroupType.ELEMENTARY:
        return '초등학교';
      case AgeGroupType.MIDDLE:
        return '중학교';
      case AgeGroupType.HIGH:
        return '고등학교';
      case AgeGroupType.OUT_OF_SCHOOL_YOUTH:
        return '학교 밖 청소년';
      case AgeGroupType.ADULT:
        return '일반';
    }
  }

  void addingPerson(WidgetRef ref, GenderType gender) {
    ref
        .read(additionalPeopleSelectProvider.notifier)
        .addingPerson(gender, ageGroup);
  }

  void reducingPeople(WidgetRef ref, GenderType gender, AgeGroupType ageGroup) {
    ref
        .read(additionalPeopleSelectProvider.notifier)
        .reducingPeople(gender, ageGroup);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String text = ageGroupDivision(ageGroup);

    final genderProvider = ref.watch(genderTypeProvider);
    final additionalPeopleProvider = ref.watch(additionalPeopleSelectProvider);
    final count = additionalPeopleProvider[genderProvider]![ageGroup];

    return Column(
      children: [
        Text(
          text,
          style: DanuriText.heading1,
        ),
        SizedBox(height: 30.h),
        Container(
          width: 140.w,
          height: 54.h,
          decoration: ShapeDecoration(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: DanuriColor.fill2,
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: 52.w,
                  height: 48.h,
                  decoration: ShapeDecoration(
                    color: DanuriColor.background1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: [
                      BoxShadow(
                        color: const Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$count',
                    style: DanuriText.headLine1,
                  ),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => reducingPeople(ref, genderProvider, ageGroup),
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 12.w,
                        right: 13.w,
                      ),
                      width: 43.w,
                      height: 48.h,
                      child: SvgPicture.asset('assets/icons/minus.svg'),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => addingPerson(ref, genderProvider),
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 12.w,
                        right: 13.w,
                      ),
                      width: 43.w,
                      height: 48.h,
                      child: SvgPicture.asset('assets/icons/plus.svg'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
