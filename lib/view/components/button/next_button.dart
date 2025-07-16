import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.centerText,
    required this.onTap,
    required this.isActivate,
    this.organAuthVersion = false,
  });

  final String centerText;
  final GestureTapCallback onTap;
  final bool isActivate;
  final bool organAuthVersion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: organAuthVersion ? 400.w : 500.w,
        height: organAuthVersion ? 48.h : 54.h,
        decoration: ShapeDecoration(
          color: isActivate ? DanuriColor.primary1 : DanuriColor.interaction1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(organAuthVersion ? 12 : 8),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          centerText,
          style: DanuriText.body1Normal.copyWith(
            color: isActivate ? DanuriColor.static1 : DanuriColor.label2,
          ),
        ),
      ),
    );
  }
}
