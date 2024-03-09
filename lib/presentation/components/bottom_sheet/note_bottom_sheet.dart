import 'package:emiland/presentation/screens/lekals/tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../provider/Tabbar_provider.dart';
import '../../../provider/suit_data_provider.dart';
import 'add_value.dart';
import 'bottomsheet_button.dart';

final fieldText = TextEditingController();

Future<void> noteBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    constraints: BoxConstraints(maxWidth: double.infinity, maxHeight: 1010.h),
    backgroundColor: Colors.transparent,
    barrierColor: Colors.transparent,
    elevation: 0,
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return Center(
          child: Container(
            width: 600,
            height: 600,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: TextField(
                    style: TextStyle(color: Colors.black, fontSize: 28.sp),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0.sp),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0.sp),
                      ),
                    ),
                  ),
                )),
                SizedBox(
                  height: 20.h,
                ),
                OutlinedButton(
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28.sp,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white10,
                    primary: Colors.black,
                    side: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        );
      });
    },
  );
}
