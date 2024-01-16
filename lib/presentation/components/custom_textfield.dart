// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, this.center = false});
  bool center;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: center ? TextAlign.center : TextAlign.left,
      style: TextStyle(color: const Color(0xFF2D2D2C), fontSize: 30.sp),
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0.5, color: Colors.black)),
        border: OutlineInputBorder(
            borderSide: BorderSide(width: 0.5, color: Colors.black)),
        hintText: 'Enter a search term',
      ),
    );
  }
}
