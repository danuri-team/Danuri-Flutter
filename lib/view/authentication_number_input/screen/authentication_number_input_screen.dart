import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/view/componets/button/custom_back_button.dart';
import 'package:danuri_flutter/view/componets/button/custom_press_button.dart';
import 'package:danuri_flutter/view/componets/layout/unseparated_layout.dart';
import 'package:danuri_flutter/view/componets/number_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AuthenticationNumberInputScreen extends StatelessWidget {
  const AuthenticationNumberInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return UnSeparatedLayout(
      widget: Column(
        children: [
          CustomBackButton(
            onTap: () => context.pop(),
            text: '돌아가기',
          ),
          SizedBox(height: 146.h),
          Text(
            '인증 번호',
            style: DanuriText.caption2Medium,
          ),
          SizedBox(height: 14.h),
          NumberInputField(width: 492.w),
          SizedBox(height: 16.h),
          Text(
            '1분 이내에 인증 번호를 입력해 주세요.',
            style: DanuriText.caption3Medium,
          ),
          SizedBox(height: 112.h),
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
