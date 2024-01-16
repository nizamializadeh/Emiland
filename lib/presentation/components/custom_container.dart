import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.width = 404,
    this.height = 148,
    this.text,
    this.color = Colors.white,
    this.isBorderRight = false,
    this.isBorderLeft = false,
    this.isBorderTop = false,
    this.isBorderBottom = false,
    this.isFlexible = false,
  });
  final double width;
  final double height;
  final String? text;
  final Color color;
  final bool isBorderRight;
  final bool isBorderLeft;
  final bool isBorderTop;
  final bool isBorderBottom;
  final bool isFlexible;

  @override
  Widget build(BuildContext context) {
    var border = BorderSide(
      color: Colors.black,
      width: 4.0.w,
    );
    var borderTransparent = const BorderSide(
      color: Colors.transparent,
    );
    return Container(
      alignment: Alignment.topCenter,
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
          border: Border(
            left: isBorderLeft ? border : borderTransparent,
            right: isBorderRight ? border : borderTransparent,
            top: isBorderTop ? border : borderTransparent,
            bottom: isBorderBottom ? border : borderTransparent,
          ),
          color: color),
      child: isFlexible
          ? const SizedBox()
          : Padding(
              padding: EdgeInsets.only(top: 24.h),
              child: Text(
                text ?? '',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 38.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
    );
  }
}
