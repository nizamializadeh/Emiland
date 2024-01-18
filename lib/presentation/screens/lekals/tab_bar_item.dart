import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem(
      {super.key,
      required this.text,
      this.value,
      this.onTap,
      this.active = false,
      this.width = 456});
  final double width;
  final String text;
  final dynamic? value;
  final Function()? onTap;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: active ? onTap : () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0.h),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffDDDDDD), width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
            color: active ? Colors.white : const Color(0xFFE7E7E7)),
        padding: EdgeInsets.only(left: 20.w, right: 0.w),
        alignment: Alignment.centerLeft,
        width: width.w,
        height: 110.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 22.sp),
            ),
            Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              color: value > 0
                  ? Colors.green
                  : value != 0
                      ? Colors.red
                      : Colors.white,
              child: Text(
                value != 0 ? value.toString() : ' ',
                style: TextStyle(color: Colors.black, fontSize: 22.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
