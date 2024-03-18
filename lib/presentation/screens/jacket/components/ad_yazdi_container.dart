import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdYazdiContainer extends StatelessWidget {
  const AdYazdiContainer({super.key, required this.ontap, required this.name});
  final Function() ontap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 230,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Color(0xffDDDDDD),
          ), // Set border color here
        ),
        child: Center(
          child: Text(name,
              style: TextStyle(color: Colors.black, fontSize: 33.sp)),
        ),
      ),
    );
  }
}
