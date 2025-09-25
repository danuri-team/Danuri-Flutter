import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/presentation/widgets/button/call_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({
    super.key,
    required this.title,
    required this.subTitle,
    required this.needCallBackButton,
    required this.rightWidget,
    this.callBackButtonOnTap,
  });

  final String title;
  final String subTitle;
  final bool needCallBackButton;
  final Widget rightWidget;
  final void Function()? callBackButtonOnTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            needCallBackButton
                ? Column(
                    children: [
                      CallBackButton(callBackButtonOnTap: callBackButtonOnTap),
                      SizedBox(height: 50.h),
                    ],
                  )
                : const SizedBox.shrink(),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        DanuriText.title2.copyWith(color: DanuriColor.label5),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    subTitle,
                    style: DanuriText.heading1.copyWith(
                      color: DanuriColor.label3,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        rightWidget
      ],
    );
  }
}
