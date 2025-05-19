import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/view/componets/button/custom_back_button.dart';
import 'package:danuri_flutter/view/componets/button/custom_press_button.dart';
import 'package:danuri_flutter/view/componets/layout/unseparated_layout.dart';
import 'package:danuri_flutter/view/componets/number_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return UnSeparatedLayout(
      widget: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(
                  onTap: () => context.push('/home'), text: '처음으로 돌아가기'),
              SizedBox(height: 118.h),
              Text(
                '핸드폰 번호',
                style: DanuriText.caption2Medium,
              ),
              SizedBox(height: 14.h),
              NumberInputField(width: 492.w),
              SizedBox(height: 18.h),
              Text(
                '기존에 시설을 이용하셨다면, 위 입력칸에 번호를 입력해주세요.',
                style: DanuriText.caption3Medium
                    .copyWith(color: DanuriColor.main4),
              ),
              SizedBox(height: 124.h),
              CustomPressButton(
                onTap: () {},
                color: DanuriColor.main7,
                centerText: '시작하기',
                width: 492.h,
              ),
            ],
          ),
          SizedBox(width: 100.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                behavior: HitTestBehavior.opaque,
                child: Row(
                  children: [
                    Text(
                      '이용해 보지 않았다면?',
                      style: DanuriText.title2ExtraBold
                          .copyWith(color: DanuriColor.main7),
                    ),
                    SizedBox(width: 14.w),
                    SvgPicture.asset('assets/icons/blue_arrow_right.svg'),
                  ],
                ),
              ),
              SizedBox(height: 14.h),
              Text(
                '간단한 정보로 30초만에 시작할 수 있어요',
                style: DanuriText.caption1Medium
                    .copyWith(color: DanuriColor.main4),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
