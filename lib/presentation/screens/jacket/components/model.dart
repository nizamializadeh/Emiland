import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'header.dart';

class Model extends StatelessWidget {
  const Model({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 42.h,
        ),
        // info divider
        Header(
          title: 'Model',
        ),

        Container(
          margin: EdgeInsets.only(top: 24.h),
          child: Row(
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ModelContainer(
                firstText: 'Tuxedo',
                secondText: 'Single Breasted',
              ),
              ModelContainer(
                firstText: 'Tuxedo',
                secondText: 'Single Breasted',
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 24.h),
          child: Row(
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ModelContainer(
                firstText: 'Tuxedo',
                secondText: 'Single Breasted',
              ),
              ModelContainer(
                firstText: 'Tuxedo',
                secondText: 'Single Breasted',
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 24.h),
          child: Row(
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ModelContainer(
                firstText: 'Tuxedo',
                secondText: 'Single Breasted',
              ),
              ModelContainer(
                firstText: 'Tuxedo',
                secondText: 'Single Breasted',
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 24.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ModelContainer(
                firstText: '',
                secondText: ' Gilet',
              ),
              ModelContainer(
                firstText: '',
                secondText: 'Pants',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ModelContainer extends StatelessWidget {
  ModelContainer({super.key, 
    required this.firstText,
    required this.secondText,
  });
  String firstText;
  String secondText;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 456.w,
      height: 274.h,
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(40)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstText,
            style: TextStyle(color: Colors.black, fontSize: 28.sp),
          ),
          Text(
            secondText,
            style: TextStyle(color: Colors.black, fontSize: 28.sp),
          ),
        ],
      ),
    );
  }
}
