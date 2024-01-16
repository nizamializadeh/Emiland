import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  Header({super.key, 
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
            style: TextStyle(color:const Color(0xFF101010), fontSize: 28.sp),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Divider(
          color: const Color(0xFF2D2D2C),
          height: 3.h,
        ),
      ],
    );
  }
}
