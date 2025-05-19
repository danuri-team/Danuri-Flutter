import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/view/componets/facility_time_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeparatedLayout extends StatelessWidget {
  const SeparatedLayout({
    super.key,
    required this.leftWidget,
    required this.rightWidget,
  });

  final Widget leftWidget;
  final Widget rightWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(60.w, 83.h, 60.w, 52.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                leftWidget,
                SizedBox(
                  width: 100.w,
                  height: 556.h,
                  child: VerticalDivider(
                    width: 1,
                    indent: 25.h,
                    endIndent: 25.h,
                    color: DanuriColor.main3,
                  ),
                ),
                rightWidget,
              ],
            ),
            FacilityTimeBottomBar(),
          ],
        ),
      ),
    );
  }
}
