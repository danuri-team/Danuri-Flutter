import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  final GestureTapCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/blue_arrow_left.svg'),
          SizedBox(width: 18.w),
          Text(
            text,
            style: DanuriText.body1Bold.copyWith(height: 1.17),
          ),
        ],
      ),
    );
  }
}
