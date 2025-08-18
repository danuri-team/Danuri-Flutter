import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CallBackButton extends StatelessWidget {
  const CallBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.pop(),
      icon: SvgPicture.asset('assets/icons/arrow-left.svg'),
    );
  }
}
