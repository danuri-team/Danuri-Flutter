import 'package:danuri_flutter/view/componets/facility_time_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimerLayout extends StatelessWidget {
  const TimerLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 60.w,
          right: 60.w,
          top: 83.h,
          bottom: 52.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            FacilityTimeBottomBar(),
          ],
        ),
      ),
    );
  }
}