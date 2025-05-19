import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPressButton extends StatelessWidget {
  const CustomPressButton({
    super.key,
    required this.onTap,
    required this.color,
    required this.centerText,
    required this.width,
  });

  final GestureTapCallback onTap;
  final Color color;
  final String centerText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 69.h,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          centerText,
          style: DanuriText.body2ExtraBold.copyWith(color: DanuriColor.white),
        ),
      ),
    );
  }
}
