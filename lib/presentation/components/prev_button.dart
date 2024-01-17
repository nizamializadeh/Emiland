import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrevButton extends StatelessWidget {
  const PrevButton({
    super.key,
    required this.onPressed,
  });
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            border: Border.all(
              width: 0.5,
              color: const Color(0xff2d2d2c99),
            )),
        width: 200.w,
        height: 79.h,
        child: const Text(
          'Previous',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
