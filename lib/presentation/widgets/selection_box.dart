import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/core/theme/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectionBox extends StatelessWidget {
  const SelectionBox({
    super.key,
    required this.isSelected,
    required this.name,
    required this.onTap,
    this.available = true,
  });

  final bool isSelected;
  final String name;
  final GestureTapCallback onTap;
  final bool available;


  @override
  Widget build(BuildContext context) {
    double width = 84.w;
    final result = name.replaceAll(RegExp('\\s'), "");
    if (RegExp(r'[ㄱ-ㅎㅏ-ㅣ가-힣]').hasMatch(name)) {
      width += 14.w * (result.length - 1);
    } else {
      width += 8.w * (result.length - 1);
    }

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        width: width,
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
          name,
          style: DanuriText.body1Normal.copyWith(
            color: available
                ? isSelected
                    ? DanuriColor.static1
                    : DanuriColor.label4
                : DanuriColor.static1,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
