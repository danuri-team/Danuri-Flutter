import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/provider/qr_action_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/core/enum/flow_type.dart';
import 'package:danuri_flutter/core/enum/qr_action_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class CheckOutButton extends ConsumerWidget {
  const CheckOutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {
        ref.read(flowProvider.notifier).update(
              (state) => FlowType.CHECK_OUT,
            );
        Throttle.run(
          () {
            ref.read(qrActionProvider.notifier).update(
                  (state) => QrActionType.CHECK_OUT,
                ); 
            AppNavigation.pushQr(context, CameraFacing.front);
          },
        );
      },
      child: Container(
        width: 138.w,
        height: 48.h,
        decoration: ShapeDecoration(
          color: DanuriColor.line1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/exit-room.svg'),
            SizedBox(width: 6.w),
            Text(
              '퇴실하기',
              style: DanuriText.body1Normal.copyWith(color: DanuriColor.label4),
            ),
          ],
        ),
      ),
    );
  }
}
