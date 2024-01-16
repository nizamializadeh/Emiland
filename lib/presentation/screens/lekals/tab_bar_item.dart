import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem({
    super.key,
    required this.text,
    this.value,
    this.onTap,
    this.active = false,
  });

  final String text;
  final dynamic? value;
  final Function()? onTap;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: active ? onTap : () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.h),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.w),
            color: active ? Colors.white : const Color(0xFFE7E7E7)),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        alignment: Alignment.centerLeft,
        width: 456.w,
        height: 110.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 22.sp),
            ),
            Text(
              value != 0 ? value.toString() : ' ',
              style: TextStyle(color: Colors.black, fontSize: 22.sp),
            ),
          ],
        ),
      ),
    );
  }
}
