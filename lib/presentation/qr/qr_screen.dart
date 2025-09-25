import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/on_detect_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScreen extends ConsumerWidget {
  const QrScreen({
    super.key,
    required this.cameraFacing,
  });

  final String cameraFacing;

  checkFacing(String cameraFacing) {
    switch (cameraFacing) {
      case 'back':
        return CameraFacing.back;
      case 'front':
        return CameraFacing.front;
      default:
        return CameraFacing.front;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onDetect = ref.watch(onDetectProvider);
    final facing = checkFacing(cameraFacing);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: MobileScanner(
                onDetect: (capture) {
                  Throttle.run(
                    () async {
                      context.pop(capture);
                      onDetect!();
                    },
                  );
                },
                controller: MobileScannerController(
                  facing: facing,
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
