import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/view/componets/rounded_rectangle_box.dart';
import 'package:danuri_flutter/view/home/widget/available_space.dart';
import 'package:danuri_flutter/view/home/widget/rental_available_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UsageStatusArea extends StatelessWidget {
  const UsageStatusArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 23.h),
      width: 514.w,
      height: 556.h,
      decoration: ShapeDecoration(
        color: DanuriColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          Text(
            '이용 현황',
            style: DanuriText.body1Bold,
          ),
          SizedBox(height: 25.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RoundedRectangleBox(
                      width: 14.r,
                      height: 14.r,
                      borderRadius: 4,
                      color: DanuriColor.main7,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      '이용 가능',
                      style: DanuriText.caption3Medium,
                    ),
                    SizedBox(width: 20.w),
                    SizedBox(
                      height: 17.h,
                      child: VerticalDivider(
                        color: DanuriColor.main3,
                        width: 1,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    RoundedRectangleBox(
                      width: 14.r,
                      height: 14.r,
                      borderRadius: 4,
                      color: DanuriColor.main5,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      '이용 불가능',
                      style: DanuriText.caption3Medium,
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Text(
                  '이용 가능 공간',
                  style: DanuriText.caption2ExtraMedium,
                ),
                SizedBox(height: 20.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.w),
                  width: double.infinity,
                  height: 112.h,
                  decoration: ShapeDecoration(
                    color: DanuriColor.main2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AvailableSpace(
                        spaceName: '노래방',
                        color: DanuriColor.main7,
                      ),
                      AvailableSpace(
                        spaceName: '회의실',
                        color: DanuriColor.main7,
                      ),
                      AvailableSpace(
                        spaceName: '관련 공간1',
                        color: DanuriColor.main7,
                      ),
                      AvailableSpace(
                        spaceName: '관련 공간2',
                        color: DanuriColor.main7,
                      ),
                      AvailableSpace(
                        spaceName: '관련 공간3',
                        color: DanuriColor.main7,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Divider(
                  thickness: 1,
                  color: DanuriColor.main3,
                ),
                SizedBox(height: 20.h),
                Text(
                  '대여 가능 물품',
                  style: DanuriText.caption2ExtraMedium,
                ),
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  width: double.infinity,
                  height: 111.h,
                  decoration: ShapeDecoration(
                    color: DanuriColor.main2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RentalAvailableItem(
                        itemQuantity: 0,
                        itemName: '충전기',
                      ),
                      RentalAvailableItem(
                        itemQuantity: 12,
                        itemName: '담요',
                      ),
                      RentalAvailableItem(
                        itemQuantity: 30,
                        itemName: '텀블러',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
