import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/core/design_system/text.dart';
import 'package:danuri_flutter/data/view_models/help_request_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpMeButton extends StatelessWidget {
  HelpMeButton({super.key});

  final HelpRequestViewModel _viewModel = HelpRequestViewModel();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        await _viewModel.helpRequest();
      },
      child: Container(
        width: 152.w,
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
            Text(
              '? 도와주세요',
              style: DanuriText.body1Normal,
            ),
          ],
        ),
      ),
    );
  }
}
