import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpaceBox extends StatelessWidget {
  const SpaceBox({
    super.key,
    required this.isSelected,
    required this.spaceName,
    required this.onTap,
    required this.available,
  });

  final bool isSelected;
  final String spaceName;
  final GestureTapCallback onTap;
  final bool available;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: spaceName.length > 2 ? 98.w : 84.w,
        height: 48.h,
        decoration: ShapeDecoration(
          color: available
              ? isSelected
                  ? DanuriColor.primary1
                  : DanuriColor.fill2
              : DanuriColor.label2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          spaceName,
          style: DanuriText.body1Normal.copyWith(
            color: available
                ? isSelected
                    ? DanuriColor.static1
                    : DanuriColor.label4
                : DanuriColor.static1,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
