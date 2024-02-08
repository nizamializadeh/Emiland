import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddValue extends StatelessWidget {
  AddValue({
    super.key,
    required this.value,
    required this.color,
    required this.func,
  });
  String value;
  Color color;
  Function() func;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        width: 220.w,
        height: 120.h,
        child: Center(
          child: Text(
            value,
            style: TextStyle(
                color: Colors.black,
                fontSize: 28.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
