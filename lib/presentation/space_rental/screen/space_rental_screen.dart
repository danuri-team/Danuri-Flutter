import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/provider/space_rental_provider.dart';
import 'package:danuri_flutter/core/provider/time_slot_provider.dart';
import 'package:danuri_flutter/data/models/enum/flow_type.dart';
import 'package:danuri_flutter/presentation/space_rental/widgets/space_list.dart';
import 'package:danuri_flutter/presentation/space_rental/widgets/time_slot_list.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:danuri_flutter/presentation/widgets/available_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpaceRentalScreen extends ConsumerWidget {
  const SpaceRentalScreen({super.key});

  void _callBack(WidgetRef ref) {
    ref.read(spaceIdProvider.notifier).update((state) => null);
    ref.read(startAtProvider.notifier).update((state) => null);
    ref.read(timeSlotProvider.notifier).reset();
  }

  void _submit(WidgetRef ref, BuildContext context) {
    ref.read(flowProvider.notifier).update(
          (state) => FlowType.SPACE_RENTAL,
        );
    AppNavigation.pushLogin(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spaceId = ref.watch(spaceIdProvider);
    final startAt = ref.watch(startAtProvider);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 58.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTopBar(
              title: '이용할 공간을 선택해주세요',
              subTitle: '공간을 선택해주세요',
              needCallBackButton: true,
              callBackButtonOnTap: () => _callBack(ref),
              rightWidget: Column(
                children: [
                  SizedBox(height: 160.sp),
                  const AvailableCategory(),
                ],
              ),
            ),
            SizedBox(height: 103.h),
            const SpaceList(),
            SizedBox(height: 46.h),
            const TimeSlotList(),
            const Spacer(),
            NextButton(
              centerText: '다음',
              onTap: () async {
                if (spaceId != null && startAt != null) () => _submit(ref, context);
              },
              isActivate: spaceId != null && startAt != null,
            ),
          ],
        ),
      ),
    );
  }
}
