import 'dart:async';

import 'package:danuri_flutter/view/components/button/next_button.dart';
import 'package:danuri_flutter/view/components/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CompletionScreen extends StatefulWidget {
  const CompletionScreen({super.key});

  @override
  State<CompletionScreen> createState() => _CompletionScreenState();
}

class _CompletionScreenState extends State<CompletionScreen> {
  int _count = 5;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    countDown();
  }

  countDown() {
    Future.delayed(
      const Duration(milliseconds: 100),
      () {
        _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
          if (_count == 1) {
            timer.cancel();
            context.go('/');
          } else {
            setState(() {
              --_count;
            });
          }
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(60.w, 85.h, 61.w, 58.h),
        child: Column(
          children: [
            CustomTopBar(
              title: '처리가 완료되었습니다.',
              subTitle: '$_count초 뒤에 자동으로 이동합니다.',
              needCallBackButton: true,
              needHelpMeButton: false,
            ),
            SizedBox(height: 415.h),
            NextButton(
              centerText: '다음',
              onTap: () => context.push('/'),
            ),
          ],
        ),
      ),
    );
  }
}
