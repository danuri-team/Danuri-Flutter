import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/view/componets/button/custom_back_button.dart';
import 'package:danuri_flutter/view/componets/button/custom_press_button.dart';
import 'package:danuri_flutter/view/componets/button/subject_type_button.dart';
import 'package:danuri_flutter/view/componets/layout/unseparated_layout.dart';
import 'package:danuri_flutter/view/componets/number_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return UnSeparatedLayout(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBackButton(
            onTap: () => context.push('/login'),
            text: '로그인으로 돌아가기',
          ),
          SizedBox(height: 30.h),
          Text(
            '성별',
            style: DanuriText.caption2Medium,
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              SubjectTypeButton(
                width: 80.w,
                text: '남자',
                borderSideColor: DanuriColor.main7,
                color: DanuriColor.main7,
                textColor: DanuriColor.white,
              ),
              SizedBox(width: 14.w),
              SubjectTypeButton(
                width: 80.w,
                text: '여자',
                borderSideColor: DanuriColor.main7,
                color: DanuriColor.white,
                textColor: DanuriColor.black,
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            '학년',
            style: DanuriText.caption2Medium,
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              SubjectTypeButton(
                width: 108.w,
                text: '초등학교',
                borderSideColor: DanuriColor.main7,
                color: DanuriColor.main7,
                textColor: DanuriColor.white,
              ),
              SizedBox(width: 14.w),
              SubjectTypeButton(
                width: 94.w,
                text: '중학교',
                borderSideColor: DanuriColor.main7,
                color: DanuriColor.white,
                textColor: DanuriColor.black,
              ),
              SizedBox(width: 14.w),
              SubjectTypeButton(
                width: 108.w,
                text: '고등학교',
                borderSideColor: DanuriColor.main7,
                color: DanuriColor.white,
                textColor: DanuriColor.black,
              ),
              SizedBox(width: 14.w),
              SubjectTypeButton(
                width: 143.w,
                text: '학교 밖 청소년',
                borderSideColor: DanuriColor.main7,
                color: DanuriColor.white,
                textColor: DanuriColor.black,
              ),
              SizedBox(width: 14.w),
              SubjectTypeButton(
                width: 80.w,
                text: '일반',
                borderSideColor: DanuriColor.main7,
                color: DanuriColor.white,
                textColor: DanuriColor.black,
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text(
            '휴대폰 번호',
            style: DanuriText.caption2Medium,
          ),
          SizedBox(height: 14.h),
          NumberInputField(width: 542.w),
          SizedBox(height: 18.h),
          Text(
            '이미 가입된 번호입니다.',
            style: DanuriText.caption3Medium.copyWith(color: DanuriColor.main8),
          ),
          SizedBox(height: 30.h),
          CustomPressButton(
            onTap: () {},
            color: DanuriColor.main7,
            centerText: '인증하기',
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
