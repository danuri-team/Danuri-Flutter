import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/view/componets/facility_time_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnSeparatedLayout extends StatelessWidget {
  const UnSeparatedLayout({
    super.key,
    required this.widget,
  });

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(60.w, 83.h, 60.w, 52.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 32.h),
              width: 1128.w,
              height: 556.h,
              decoration: ShapeDecoration(
                color: DanuriColor.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: widget,
            ),
            FacilityTimeBottomBar(),
          ],
        ),
      ),
    );
  }
}
