import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/data/view_models/home_view_model.dart';
import 'package:danuri_flutter/view/home/widget/select_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:timer_builder/timer_builder.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeViewModel _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(60.w, 103.h, 61.w, 133.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Column(
                    children: [
                      Text(
                        '반가워요, 공간을 이용 해볼까요',
                        style: DanuriText.title2
                            .copyWith(color: DanuriColor.label5),
                      ),
                      SizedBox(height: 6.h),
                      TimerBuilder.periodic(
                        const Duration(seconds: 1),
                        builder: (context) {
                          DateTime time = DateTime.now();
                          String period = time.hour < 12 ? '오전' : '오후';
                          return Text(
                            '송정다누리 청소년센터 - $period ${time.hour > 13 ? time.hour - 12 : time.hour}시 ${time.minute}분',
                            style: DanuriText.heading1
                                .copyWith(color: DanuriColor.label3),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await _viewModel.exitRoom();
                  },
                  child: Container(
                    width: 138.w,
                    height: 48.h,
                    decoration: ShapeDecoration(
                      color: DanuriColor.line1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/leading.svg'),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          '퇴실하기',
                          style: DanuriText.body1Normal
                              .copyWith(color: DanuriColor.label4),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 82.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectButton(
                  svgName: 'space.svg',
                  text: '공간 사용하기',
                  onTap: () {
                    context.push('/register-used-space');
                  },
                ),
                SizedBox(width: 70.w),
                SelectButton(
                  svgName: 'item.svg',
                  text: '물품 대여하기',
                  onTap: () {
                    context.push('/item-rental');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
