import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingleSuit extends StatelessWidget {
  SingleSuit({
    super.key,
    this.onclick,
    required this.img,
    required this.active,
  });

  final Function()? onclick;
  final String img;
  bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          child: Center(
            child: Image.asset(
              img,
              fit: BoxFit.fill,
              width: active ? 287.w : 260.w,
              height: active ? 730.h : 650.h,
            ),
          ),
        ),
      ),
    );
  }
}
