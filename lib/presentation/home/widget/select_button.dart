import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectButton extends StatelessWidget {
  const SelectButton({
    super.key,
    required this.svgName,
    required this.text,
    required this.onTap,
  });

  final String svgName;
  final String text;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 400.w,
        height: 408.h,
        decoration: ShapeDecoration(
          color: DanuriColor.fill1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/$svgName'),
            SizedBox(height: 10.h),
            Text(
              text,
              style: DanuriText.title2.copyWith(color: DanuriColor.label6),
            ),
          ],
        ),
      ),
    );
  }
}
