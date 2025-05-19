import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/view/componets/button/custom_press_button.dart';
import 'package:danuri_flutter/view/componets/button/subject_type_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.title,
    required this.subject,
    required this.buttonColor,
    required this.pressButtonText,
    required this.addRule,
    required this.pressButtonTapAcction,
  });

  final String title;
  final String subject;
  final Color buttonColor;
  final String pressButtonText;
  final bool addRule;
  final GestureTapCallback pressButtonTapAcction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(29.w, 30.h, 29.w, 20.h),
        width: 492.w,
        height: 385.h,
        decoration: ShapeDecoration(
          color: DanuriColor.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              width: 1.w,
              color: buttonColor,
            ),
          ),
        ),
        child: Material(
          color: DanuriColor.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: DanuriText.body2Bold,
              ),
              SizedBox(height: addRule ? 30.h : 73.5),
              Text(
                subject,
                style: DanuriText.caption2ExtraMedium,
              ),
              SizedBox(height: 14.h),
              Row(
                children: [
                  SubjectTypeButton(
                    width: 120.w,
                    text: '노래방',
                    borderSideColor: DanuriColor.main7,
                    color: DanuriColor.main7,
                    textColor: DanuriColor.white,
                  ),
                  SizedBox(width: 33.w),
                  SubjectTypeButton(
                    width: 120.w,
                    text: '본관(방문록)',
                    borderSideColor: DanuriColor.main7,
                    color: DanuriColor.white,
                    textColor: DanuriColor.black,
                  ),
                  SizedBox(width: 33.w),
                  SubjectTypeButton(
                    width: 120.w,
                    text: '게임방',
                    borderSideColor: DanuriColor.main7,
                    color: DanuriColor.white,
                    textColor: DanuriColor.black,
                  ),
                ],
              ),
              addRule
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.h),
                        Text(
                          '뒷정리는 필수입니다',
                          style: DanuriText.caption2ExtraMedium,
                        ),
                        SizedBox(height: 14.h),
                        Row(
                          children: [
                            Container(
                              width: 24.r,
                              height: 24.r,
                              decoration: ShapeDecoration(
                                color: DanuriColor.main7,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: BorderSide(
                                    width: 1.w,
                                    color: DanuriColor.main7,
                                  ),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {},
                                child:
                                    SvgPicture.asset('assets/icons/check.svg'),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              '넵, 확인했습니다',
                              style: DanuriText.caption2ExtraMedium,
                            ),
                          ],
                        ),
                      ],
                    )
                  : SizedBox.shrink(),
              SizedBox(height: addRule ? 30.h : 73.5),
              CustomPressButton(
                onTap: pressButtonTapAcction,
                color: buttonColor,
                centerText: pressButtonText,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
