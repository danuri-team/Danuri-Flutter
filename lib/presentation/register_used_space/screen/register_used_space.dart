import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/provider/space_id_provider.dart';
import 'package:danuri_flutter/data/models/enum/flow_type.dart';
import 'package:danuri_flutter/presentation/register_used_space/widgets/select_space.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:danuri_flutter/presentation/widgets/available_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterUsedSpace extends ConsumerWidget {
  const RegisterUsedSpace({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spaceId = ref.watch(spaceIdProvider);
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
              rightWidget: Column(
                children: [
                  SizedBox(height: 160.sp),
                  const AvailableCategory(),
                ],
              ),
            ),
            SizedBox(height: 103.h),
            SelectSpace(),
            const Spacer(),
            NextButton(
              centerText: '다음',
              onTap: () async {
                if (spaceId != null) {
                  ref.read(flowProvider.notifier).update(
                        (state) => FlowType.REGISTER_USED_SPACE_FLOW,
                      );
                  AppNavigation.pushLogin(context);
                }
              },
              isActivate: spaceId != null,
            ),
          ],
        ),
      ),
    );
  }
}
