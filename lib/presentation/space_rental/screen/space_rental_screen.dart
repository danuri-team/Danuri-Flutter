import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/provider/space_rental_provider.dart';
import 'package:danuri_flutter/core/provider/time_slot_provider.dart';
import 'package:danuri_flutter/data/models/enum/flow_type.dart';
import 'package:danuri_flutter/data/view_models/space_view_model.dart';
import 'package:danuri_flutter/presentation/space_rental/widgets/space_list.dart';
import 'package:danuri_flutter/presentation/space_rental/widgets/time_slot_list.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:danuri_flutter/presentation/widgets/available_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpaceRentalScreen extends ConsumerStatefulWidget {
  const SpaceRentalScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SpaceRentalScreenState();
}

class _SpaceRentalScreenState extends ConsumerState<SpaceRentalScreen> {
  final SpaceViewModel viewModel = SpaceViewModel();

  @override
  Widget build(BuildContext context) {
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
              callBackButtonOnTap: () {
                ref.read(spaceIdProvider.notifier).update((state) => null);
                ref.read(startAtProvider.notifier).update((state) => null);
                ref.read(timeSlotProvider.notifier).reset();
              },
              rightWidget: Column(
                children: [
                  SizedBox(height: 160.sp),
                  const AvailableCategory(),
                ],
              ),
            ),
            SizedBox(height: 103.h),
            SpaceList(),
            SizedBox(height: 46.h),
            TimeSlotList(),
            const Spacer(),
            NextButton(
              centerText: '다음',
              onTap: () async {
                if (spaceId != null && startAt != null) {
                  ref.read(flowProvider.notifier).update(
                        (state) => FlowType.SPACE_RENTAL,
                      );
                  AppNavigation.pushLogin(context);
                }
              },
              isActivate: spaceId != null && startAt != null,
            ),
          ],
        ),
      ),
    );
  }
}
