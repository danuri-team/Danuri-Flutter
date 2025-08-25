import 'package:danuri_flutter/presentation/organ_auth/widgets/organ_auth_form.dart';
import 'package:danuri_flutter/presentation/organ_auth/widgets/qr_login.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrganAuthScreen extends StatelessWidget {
  const OrganAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(60.w, 122.h, 60.w, 163.h),
          child: Column(
            children: [
              const CustomTopBar(
                title: '기기 인증을 진행 해주세요',
                subTitle: '인증은 대시보드 → 기기 관리에서 진행하실 수 있습니다.',
                needCallBackButton: false,
                rightWidget: SizedBox.shrink(),
              ),
              SizedBox(height: 75.h),
              Container(
                width: double.infinity,
                height: 358.h,
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OrganAuthForm(),
                    VerticalDivider(
                      indent: 29.h,
                      endIndent: 29.h,
                    ),
                    const QrLogin(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
