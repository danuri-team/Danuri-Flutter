import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/view/components/button/help_me_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({
    super.key,
    required this.title,
    required this.subTitle,
    required this.needCallBackButton,
    required this.needHelpMeButton,
    this.onTap,
  });

  final String title;
  final String subTitle;
  final bool needCallBackButton;
  final bool needHelpMeButton;
  final void Function()? onTap;

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
                      IconButton(
                        onPressed: () {
                          context.pop();
                          onTap?.call();
                        },
                        icon: SvgPicture.asset('assets/icons/arrow-left.svg'),
                      ),
                      SizedBox(height: 50.h),
                    ],
                  )
                : SizedBox.shrink(),
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
                    style:
                        DanuriText.heading1.copyWith(color: DanuriColor.label3),
                  ),
                ],
              ),
            ),
          ],
        ),
        needHelpMeButton ? HelpMeButton() : SizedBox.shrink(),
      ],
    );
  }
}
