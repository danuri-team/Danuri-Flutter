import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/data/view_models/organ_auth_view_model.dart';
import 'package:danuri_flutter/view/components/button/next_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class OrganAuthScreen extends StatefulWidget {
  const OrganAuthScreen({super.key});

  @override
  State<OrganAuthScreen> createState() => _OrganAuthScreenState();
}

class _OrganAuthScreenState extends State<OrganAuthScreen> {
  final TextEditingController _deviceIdController = TextEditingController();
  final OrganAuthViewModel _viewModel = OrganAuthViewModel();

  @override
  void initState() {
    super.initState();
    _deviceIdController.addListener(
      () => setState(() {}),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _deviceIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(60.w, 122.h, 60.w, 163.h),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '기기 인증을 진행 해주세요',
                          style: DanuriText.title2
                              .copyWith(color: DanuriColor.label5),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          '인증은 대시보드 → 기기 관리에서 진행하실 수 있습니다.',
                          style: DanuriText.title2
                              .copyWith(color: DanuriColor.label3),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 75.h),
              Container(
                width: double.infinity,
                height: 358.h,
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '기기 ID',
                          style: DanuriText.label1Normal
                              .copyWith(color: DanuriColor.label4),
                        ),
                        SizedBox(height: 8.h),
                        SizedBox(
                          width: 400.w,
                          height: 48.h,
                          child: TextFormField(
                            controller: _deviceIdController,
                            onTapOutside: (event) =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                            decoration: InputDecoration(
                              hintText: '8e04a571-4956-444b-9845-8a923a47c495',
                              hintStyle: DanuriText.body1Normal
                                  .copyWith(color: DanuriColor.label6),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: DanuriColor.line2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: DanuriColor.primary1,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 13.h),
                        NextButton(
                          centerText: '연결하기',
                          onTap: () async {
                            if (_deviceIdController.text.isNotEmpty) {
                              await _viewModel
                                  .deviceAuth(_deviceIdController.text);
                              if (context.mounted) {
                                context.go('/');
                              }
                            }
                          },
                          isActivate: _deviceIdController.text.isNotEmpty,
                          organAuthVersion: true,
                        ),
                      ],
                    ),
                    VerticalDivider(
                      indent: 29.h,
                      endIndent: 29.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/camera.svg'),
                        Text(
                          'QR 인식을 통해 로그인 하기',
                          style: DanuriText.title2
                              .copyWith(color: DanuriColor.primary1),
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          '관리자 웹에서 QR을 발급하고\n이를 카메라로 인식하여 로그인 해보세요',
                          style: DanuriText.title3
                              .copyWith(color: DanuriColor.label3),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
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
