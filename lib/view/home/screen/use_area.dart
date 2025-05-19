import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UseArea extends StatelessWidget {
  const UseArea(
      {super.key, required this.acctionButtonText, required this.onTap});

  final String acctionButtonText;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(28.w, 33.h, 28.w, 200.h),
      width: 514.w,
      height: 556.h,
      decoration: ShapeDecoration(
        color: DanuriColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '이용하기',
                style: DanuriText.body1Bold,
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: onTap,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      acctionButtonText,
                      style: DanuriText.title2ExtraBold.copyWith(
                        color: DanuriColor.main7,
                      ),
                    ),
                    SizedBox(width: 14.w),
                    SvgPicture.asset('assets/icons/blue_arrow_right.svg'),
                  ],
                ),
              ),
              SizedBox(height: 14.h),
              Text(
                '공간을 사용할 수 있어요\n이용 수칙을 꼭 지켜주세요!',
                style: DanuriText.caption1Medium
                    .copyWith(color: DanuriColor.main4),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
