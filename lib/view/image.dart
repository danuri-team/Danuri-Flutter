import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  image(String svgName) {
    return Container(
      width: 100,
      height: 100,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Colors.amber,
          ),
        ),
      ),
      child: SvgPicture.asset('assets/icons/$svgName'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          image('arrow-left.svg'),
          image('camera.svg'),
          image('item-example.svg'),
          image('leading.svg'),
          image('space-example.svg'),
        ],
      ),
    );
  }
}
