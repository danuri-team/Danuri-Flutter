import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/qr_action_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScreen extends ConsumerWidget {
  const QrScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final QrActionState qrAction = ref.read(qrActionProvider)!;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            MobileScanner(
              onDetectError: (error, stackTrace) => throw Exception(error),
              onDetect: (capture) {
                Throttle.run(
                  () {
                    ref.read(qrActionProvider.notifier).excute(capture: capture, context: context);
                  },
                );
              },
              controller: MobileScannerController(
                facing: qrAction.cameraFacting,
                formats: [BarcodeFormat.qrCode],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 85.h, left: 60.w, bottom: 20.h),
              child: GestureDetector(
                onTap: () => AppNavigation.pop(context),
                behavior: HitTestBehavior.opaque,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                    Text(
                      qrAction.instructions,
                      style: DanuriText.title2
                          .copyWith(color: DanuriColor.static1),
                    )
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
