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
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          side: const BorderSide(
            width: 1.0,
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: backgorundcolor,
          textStyle: TextStyle(fontSize: 20.sp, color: Colors.black)),
      onPressed: func,
      child: Text(
        name,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
