import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  Header({super.key, required this.title, this.aligment});
  String title;
  final CrossAxisAlignment? aligment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: aligment == null
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Text(
            title,
            style: TextStyle(color: const Color(0xFF101010), fontSize: 33.sp),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Divider(
          color: aligment == null
              ? const Color(0xFFD4D4D4)
              : const Color(0xFFB4B4B4),
          height: 2.h,
        ),
      ],
    );
  }
}
