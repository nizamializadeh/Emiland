import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../provider/suit_data_provider.dart';
import '../../trousers.dart';
import '../right_side_bar.dart';
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
                ontap: () {
                  Provider.of<SuitDataProvider>(context, listen: false)
                      .selectedModelContainerActive();
                },
                firstText: 'Tuxedo',
                secondText: 'Single Breasted',
              ),
              ModelContainer(
                ontap: () {},
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
                ontap: () {},
                firstText: 'Tuxedo',
                secondText: 'Single Breasted',
              ),
              ModelContainer(
                ontap: () {},
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
                ontap: () {},
                firstText: 'Tuxedo',
                secondText: 'Single Breasted',
              ),
              ModelContainer(
                ontap: () {},
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
                ontap: () {},
                firstText: '',
                secondText: ' Gilet',
              ),
              ModelContainer(
                ontap: () {},
                firstText: '',
                secondText: 'Pants',
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$129',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w500),
              ),
              CustomBtn(
                  text: 'Prev',
                  onPressed: () {
                    print('object');
                    Provider.of<SuitDataProvider>(context, listen: false)
                        .modelSelectedActive();

                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Trousers()));
                  }),
              CustomBtn(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Trousers()));
                print('Function');
              }),
            ],
          ),
        ),
      ],
    );
  }
}

class ModelContainer extends StatelessWidget {
  ModelContainer({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.ontap,
  });
  String firstText;
  Function() ontap;
  String secondText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
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
      ),
    );
  }
}
