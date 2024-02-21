import 'package:emiland/presentation/screens/jacket/left_side_bar.dart';
import 'package:emiland/presentation/screens/jacket/right_side_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shirt/left_side_bar.dart';

class Jacket extends StatefulWidget {
  const Jacket({super.key});

  @override
  State<Jacket> createState() => _JacketState();
}

class _JacketState extends State<Jacket> {
  // bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            margin: EdgeInsets.only(bottom: 40.h),
            width: 280.w,
            child: Column(
              children: [
                Image.asset(
                  'assets/png/logo.png',
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Container(
          child: Row(
            children: [
              JacketLeftSideBar(),
              JacketRightSideBar(),
            ],
          ),
        ));
  }
}
