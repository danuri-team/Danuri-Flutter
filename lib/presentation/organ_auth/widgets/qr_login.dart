import 'dart:convert';
import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/on_detect_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/view_models/device_auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QrLogin extends ConsumerWidget {
  QrLogin({super.key});

  final viewModel = DeviceAuthViewModel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        Throttle.run(
          () async {
            final capture = await AppNavigation.pushQR(context);
            ref.read(onDetectProvider.notifier).update(
              (state) {
                return () async {
                  final value = capture?.barcodes[0].displayValue;
                  final Map<String, dynamic> decoded = jsonDecode(value!);
                  await viewModel.deviceAuth(code: decoded['code']);
                  if (viewModel.error == false) {
                    AppNavigation.goHome(context);
                  }
                };
              },
            );
          },
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/camera.svg'),
          Text(
            'QR 인식을 통해 로그인 하기',
            style: DanuriText.title2.copyWith(color: DanuriColor.primary1),
          ),
          SizedBox(height: 16.h),
          Text(
            '관리자 웹에서 QR을 발급하고\n이를 카메라로 인식하여 로그인 해보세요',
            style: DanuriText.title3.copyWith(color: DanuriColor.label3),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
