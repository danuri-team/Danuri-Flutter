import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RentalAvailableItem extends StatelessWidget {
  const RentalAvailableItem({
    super.key,
    required this.itemQuantity,
    required this.itemName,
  });

  final int itemQuantity;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: '$itemQuantity',
            style: DanuriText.title1Medium.copyWith(color: DanuriColor.black),
            children: [
              TextSpan(
                text: '개',
                style: DanuriText.caption2Medium
                    .copyWith(color: DanuriColor.black),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          itemName,
          style: DanuriText.caption2Medium,
        ),
      ],
    );
  }
}
