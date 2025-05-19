import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/view/componets/custom_dialog.dart';
import 'package:danuri_flutter/view/componets/layout/separated_layout.dart';
import 'package:danuri_flutter/view/home/screen/usage_status_area.dart';
import 'package:danuri_flutter/view/home/screen/use_area.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SeparatedLayout(
      leftWidget: UseArea(
        acctionButtonText: '공간 선택하기',
        onTap: () {
          showGeneralDialog(
            context: context,
            pageBuilder: (context, animation, secondaryAnimation) =>
                CustomDialog(
              title: '공간 선택하기',
              subject: '이용 가능 공간',
              buttonColor: DanuriColor.main7,
              pressButtonText: '다음으로',
              addRule: false,
              pressButtonTapAcction: () {
                context.pop();
                showGeneralDialog(
                  context: context,
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      CustomDialog(
                    title: '상세 선택하기',
                    subject: '이용 형태 선택',
                    buttonColor: DanuriColor.main7,
                    pressButtonText: '대여 시작하기',
                    addRule: true,
                    pressButtonTapAcction: () {
                      context.pop();
                      showGeneralDialog(
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            CustomDialog(
                          title: '대여하기',
                          subject: '대여할 물품',
                          buttonColor: DanuriColor.main7,
                          pressButtonText: '대여하기',
                          addRule: true,
                          pressButtonTapAcction: () {},
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
      rightWidget: UsageStatusArea(),
    );
  }
}
