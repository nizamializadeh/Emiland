import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingleSuit extends StatelessWidget {
  SingleSuit({
    super.key,
    this.onclick,
    required this.img,
    required this.active,
    required this.width,
    required this.height,
  });

  final Function()? onclick;
  final String img;
  final double width;
  final double height;
  bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: active ? width + 22 : width,
          height: height,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              img,
              fit: BoxFit.fill,
              width: active ? width + 22 : width,
              height: active ? height - 30 : height - 100,
            ),
          ),
        ),
      ),
    );
  }
}
