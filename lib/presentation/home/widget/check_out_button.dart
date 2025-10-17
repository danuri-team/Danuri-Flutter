import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/provider/qr_action_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/models/enum/qr_action_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckOutButton extends ConsumerWidget {
  const CheckOutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {
        Throttle.run(
          () {
            ref.read(qrActionProvider.notifier).setExecuteAction(QrActionType.CHECK_OUT);
            AppNavigation.pushQr(context);
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
