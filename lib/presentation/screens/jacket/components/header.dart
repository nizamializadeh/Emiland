import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  Header({
    super.key,
    required this.title,
  });
  String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          color: const Color(0xFFD4D4D4),
          height: 2.h,
        ),
      ],
    );
  }
}
