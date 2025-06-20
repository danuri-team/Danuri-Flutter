import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowAvailableSpace extends StatelessWidget {
  const ShowAvailableSpace({
    super.key,
    required this.available,
  });

  final bool available;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 24.r,
          height: 24.r,
          decoration: ShapeDecoration(
            color: available ? DanuriColor.fill2 : DanuriColor.label2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Text(
          available ? '이용 가능' : '이용 불가',
          style: DanuriText.body1Normal.copyWith(color: DanuriColor.label3),
        ),
      ],
    );
  }
}
