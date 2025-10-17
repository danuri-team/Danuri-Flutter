import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpaceBox extends StatelessWidget {
  const SpaceBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Throttle.run(
          () {
            AppNavigation.pushSpaceRental(context);
          },
        );
      },
      child: Container(
        width: 400.w,
        height: 408.h,
        decoration: ShapeDecoration(
          color: DanuriColor.fill1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/space.svg'),
            SizedBox(height: 10.h),
            Text(
              '공간 사용하기',
              style: DanuriText.title2.copyWith(color: DanuriColor.label6),
            ),
          ],
        ),
      ),
    );
  }
}
