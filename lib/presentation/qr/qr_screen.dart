import 'dart:convert';
import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/view_models/device_auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScreen extends ConsumerWidget {
  QrScreen({super.key});

  final viewModel = DeviceAuthViewModel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: MobileScanner(
                onDetect: (capture) {
                  Throttle.run(
                    () async {
                      final value = capture.barcodes[0].displayValue;
                      final Map<String, dynamic> decoded = jsonDecode(value!);
                      await viewModel.deviceAuth(code: decoded['code']);

                      if (viewModel.error == false) {
                        AppNavigation.goHome(context);
                      }
                    },
                  );
                },
                controller: MobileScannerController(
                  facing: CameraFacing.back,
                  formats: [BarcodeFormat.qrCode],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 85.h, left: 60.w),
              child: GestureDetector(
                onTap: () => AppNavigation.pop(context),
                behavior: HitTestBehavior.opaque,
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/white-chevron-left.svg'),
                    SizedBox(width: 24.w),
                    Text(
                      'QR 인식',
                      style: DanuriText.title2
                          .copyWith(color: DanuriColor.static1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
