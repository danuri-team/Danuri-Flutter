import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timer_builder/timer_builder.dart';

class FacilityTimeBottomBar extends StatefulWidget {
  const FacilityTimeBottomBar({super.key});

  @override
  State<FacilityTimeBottomBar> createState() => _FacilityTimeBottomBarState();
}

class _FacilityTimeBottomBarState extends State<FacilityTimeBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      width: double.infinity,
      height: 69.h,
      decoration: BoxDecoration(
        color: DanuriColor.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Text(
              //   'data',
              //   style: DanuriTypography.body4Medium.copyWith(
              //     color: DanuriColor.main4,
              //   ),
              // ),
              // SizedBox(width: 20.w),
              Text(
                '송정다누리청소년문화의집',
                style: DanuriText.body2Bold,
              ),
            ],
          ),
          TimerBuilder.periodic(const Duration(seconds: 1), builder: (context) {
            DateTime time = DateTime.now();
            String period = time.hour < 12 ? '오전' : '오후';
            return Text(
              '$period ${time.hour}시 ${time.minute}분',
              style: DanuriText.caption1ExtraMedium,
            );
          }),
        ],
      ),
    );
  }
}