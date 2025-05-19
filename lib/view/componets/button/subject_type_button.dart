import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectTypeButton extends StatelessWidget {
  const SubjectTypeButton({
    super.key,
    required this.width,
    required this.text,
    required this.borderSideColor,
    required this.color,
    required this.textColor,
  });

  final double width;
  final String text;
  final Color borderSideColor;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 47.h,
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: borderSideColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: DanuriText.caption2ExtraMedium.copyWith(color: textColor),
      ),
    );
  }
}
