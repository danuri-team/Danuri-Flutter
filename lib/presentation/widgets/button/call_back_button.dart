import 'package:danuri_flutter/config/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallBackButton extends StatelessWidget {
  const CallBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => AppNavigation.pop(context),
      icon: SvgPicture.asset('assets/icons/arrow-left.svg'),
    );
  }
}
