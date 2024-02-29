import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.firstCapitalwords,
      this.center = false,
      this.hintText = 'Enter a search therm'});
  bool center;
  String? hintText;
  TextCapitalization? firstCapitalwords;
  @override
  Widget build(BuildContext context) {
    return TextField(
      // textCapitalization: TextCapitalization.words,
      textCapitalization: firstCapitalwords != null
          ? TextCapitalization.words
          : TextCapitalization.none,
      textAlign: center ? TextAlign.center : TextAlign.left,
      style: TextStyle(color: const Color(0xFF2D2D2C), fontSize: 33.sp),
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.2, color: Color(0xffDDDDDD))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.2, color: Colors.black)),
        border: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.2, color: Colors.black)),
        hintText: hintText,
      ),
    );
  }
}
