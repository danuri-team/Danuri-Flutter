import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/view/componets/rounded_rectangle_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableSpace extends StatelessWidget {
  const AvailableSpace({
    super.key,
    required this.spaceName,
    required this.color,
  });

  final String spaceName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          spaceName,
          style: DanuriText.caption4Medium,
        ),
        RoundedRectangleBox(
          width: 60.r,
          height: 60.r,
          borderRadius: 8,
          color: color,
        ),
      ],
    );
  }
}
