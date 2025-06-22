import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.centerText,
  });

  final String centerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.w,
      height: 54.h,
      decoration: ShapeDecoration(
        color: DanuriColor.primary1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        centerText,
        style: DanuriText.body1Normal,
      ),
    );
  }
}
