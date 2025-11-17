import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/enum/gender_type.dart';
import 'package:danuri_flutter/core/provider/additional_people_select_provider.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/presentation/additional_people_select/widgets/gender_classification_bar.dart';
import 'package:danuri_flutter/presentation/additional_people_select/widgets/select_number_of_people_widget.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdditionalPeopleSelectScreen extends ConsumerWidget {
  const AdditionalPeopleSelectScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 85.h, bottom: 58.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 60.w, right: 61.w),
              child: CustomTopBar(
                title: '추가 이용 인원을 선택해주세요',
                subTitle: '본인을 제외한 추가 인원 수 / 학년을 정확하게 선택해요.',
                needCallBackButton: true,
                callBackButtonOnTap: () {
                  ref.read(additionalPeopleSelectProvider.notifier).reset();
                  ref.read(genderTypeProvider.notifier).update(
                        (state) => GenderType.MALE,
                      );
                },
                rightWidget: SizedBox.shrink(),
              ),
            ),
            SizedBox(height: 57.h),
            Padding(
              padding: EdgeInsets.only(left: 60.w, right: 61.w),
              child: const GenderClassificationBar(),
            ),
            SizedBox(height: 72.h),
            const SelectNumberOfPeopleWidget(),
            const Spacer(),
            NextButton(
              centerText: '다음',
              onTap: () {
                Throttle.run(
                  () => AppNavigation.pushLogin(context),
                );
              },
              isActivate: true,
            ),
          ],
        ),
      ),
    );
  }
}
