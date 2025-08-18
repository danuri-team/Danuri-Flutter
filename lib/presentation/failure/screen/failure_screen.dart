import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/presentation/widgets/button/next_button.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 58.h),
        child: Column(
          children: [
            CustomTopBar(
              title: '처리가 실패 하였습니다.',
              subTitle: '공간을 이용하고 있지 않습니다.',
              needCallBackButton: true,
              rightWidget: SizedBox.shrink(),
            ),
            SizedBox(height: 405.h),
            NextButton(
              centerText: '다음',
              onTap: () {
                Throttle.run(
                  () => context.push('/'),
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
