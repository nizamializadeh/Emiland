import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetButton extends StatelessWidget {
  BottomSheetButton({
    super.key,
    required this.name,
    required this.func,
    required this.backgorundcolor,
    required this.textColor,
  });
  String name;
  Function() func;
  Color backgorundcolor;
  Color textColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 25.h),
          side: const BorderSide(
            width: 0.5,
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: backgorundcolor,
          textStyle: TextStyle(fontSize: 40.sp, color: Colors.black)),
      onPressed: func,
      child: Text(
        name,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
