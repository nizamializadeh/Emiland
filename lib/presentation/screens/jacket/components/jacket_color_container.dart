import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../provider/suit_data_provider.dart';
import '../../trousers.dart';
import '../right_side_bar.dart';

class JacketColorContainer extends StatelessWidget {
  const JacketColorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
              border: Border.all(
                width: 0.5,
                color: const Color(
                  0xff2D2D2C99,
                ),
              )),
          width: 942.w,
          height: 318.h,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                height: 223.h,
                decoration: BoxDecoration(
                    color: const Color(0xff2F1716),
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    border: Border.all(
                      color: const Color(0xff2F1716),
                    )),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    'Burgundy Wool Mohair',
                    style: TextStyle(fontSize: 22.sp, color: Colors.black),
                  ),
                  const Spacer(),
                  Text(
                    '\$1280',
                    style: TextStyle(fontSize: 22.sp, color: Colors.black),
                  ),
                ],
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
                    Provider.of<SuitDataProvider>(context, listen: false)
                        .selectedModelContainerActive();
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Trousers()));
                  }),
              CustomBtn(
                  text: 'Save',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Trousers()));
                    print('Function');
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
