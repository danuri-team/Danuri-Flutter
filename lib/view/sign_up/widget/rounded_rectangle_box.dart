import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedRectangleBox extends StatelessWidget {
  const RoundedRectangleBox({
    super.key,
    required this.width,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  final double width;
  final bool selected;
  final String text;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: width,
        height: 48.h,
        decoration: ShapeDecoration(
          color: selected ? DanuriColor.primary1 : DanuriColor.line1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: DanuriText.body1Normal.copyWith(
            color: selected ? DanuriColor.static1 : DanuriColor.label4,
          ),
        ),
      ),
    );
  }
}
