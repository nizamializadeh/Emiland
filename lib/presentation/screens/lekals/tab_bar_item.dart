import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../provider/suit_data_provider.dart';

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
    SuitDataProvider suitInstanceTrue =
        Provider.of<SuitDataProvider>(context, listen: false);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 0.h),
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffDDDDDD), width: 0.5),
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              color: suitInstanceTrue.activedAllTabbar
                  ? Colors.white
                  : active
                      ? Colors.white
                      : const Color(0xFFEAEAEA)),
          padding: EdgeInsets.only(left: 20.w, right: 0.w),
          alignment: Alignment.centerLeft,
          width: width.w,
          height: 110.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(color: Color(0xff737373), fontSize: 29.sp),
              ),
              Container(
                alignment: Alignment.center,
                width: 110.w,
                height: 110.h,
                color: value > 0
                    ? Color(0xff6CE990)
                    : value != 0
                        ? Color(0xffEF5C59)
                        : Colors.white,
                child: Text(
                  value != 0 ? value.toString() : ' ',
                  style: TextStyle(color: Colors.black, fontSize: 30.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
