import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/util/throttle.dart';
import 'package:danuri_flutter/presentation/widgets/custom_top_bar.dart';
import 'package:danuri_flutter/presentation/home/widget/check_out_button.dart';
import 'package:danuri_flutter/presentation/home/widget/select_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(60.w, 103.h, 61.w, 133.h),
        child: Column(
          children: [
            TimerBuilder.periodic(
              const Duration(seconds: 1),
              builder: (context) {
                return CustomTopBar(
                  title: '반가워요, 공간을 이용 해볼까요?',
                  subTitle:
                      '송정다누리청소년센터 - ${DateFormat('a h시 m분', 'ko').format(DateTime.now())}',
                  needCallBackButton: false,
                  rightWidget: const CheckOutButton(),
                );
              },
            ),
            SizedBox(height: 72.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectButton(
                  svgName: 'space.svg',
                  text: '공간 사용하기',
                  onTap: () {
                    Throttle.run(
                      () {
                        if (mounted) {
                          AppNavigation.pushSpaceRental(context);
                        }
                      },
                    );
                  },
                ),
                SizedBox(width: 70.w),
                SelectButton(
                  svgName: 'item.svg',
                  text: '물품 대여하기',
                  onTap: () {
                    Throttle.run(
                      () {
                        if (mounted) {
                          AppNavigation.pushItemRental(context);
                        }
                      },
                    );
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
