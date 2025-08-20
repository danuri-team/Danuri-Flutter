import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/provider/flows/leaving_space_flow_provider.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LeavingSpaceButton extends StatelessWidget {
  const LeavingSpaceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        context.read<LeavingSpaceFlowProvider>().startFlow();
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
