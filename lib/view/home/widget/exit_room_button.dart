import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/core/provider/flows/exit_room_flow_provider.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ExitRoomButton extends StatelessWidget {
  const ExitRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        context.read<ExitRoomFlowProvider>().startFlow();
        Throttle.run(
          () {
            if (context.mounted) {
              context.push('/login');
            }
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
