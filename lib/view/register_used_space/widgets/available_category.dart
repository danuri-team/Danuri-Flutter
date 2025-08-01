import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableCategory extends StatelessWidget {
  const AvailableCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 24.r,
          height: 24.r,
          decoration: ShapeDecoration(
            color: DanuriColor.fill2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Text(
          '이용 가능',
          style: DanuriText.body1Normal.copyWith(color: DanuriColor.label3),
        ),
        SizedBox(width: 34.w),
        Container(
          width: 24.r,
          height: 24.r,
          decoration: ShapeDecoration(
            color: DanuriColor.label2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Text(
          '이용 불가',
          style: DanuriText.body1Normal.copyWith(color: DanuriColor.label3),
        ),
      ],
    );
  }
}
