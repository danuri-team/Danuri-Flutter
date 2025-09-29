import 'package:danuri_flutter/core/provider/flow_provider.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/data/models/enum/flow_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CheckOutButton extends ConsumerWidget {
  const CheckOutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {
        ref.read(flowProvider.notifier).update((state) => FlowType.CHECK_OUT,);
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
