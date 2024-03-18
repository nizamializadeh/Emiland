import 'package:emiland/presentation/screens/jacket/components/style_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../provider/checkbox_provider.dart';
import '../../lekals/tab_bar_item.dart';
import 'note.dart';

class JacketSub extends StatelessWidget {
  const JacketSub({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CheckboxProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    const TabBarItem(
                      checkbox: true,
                      width: 471,
                      value: 0,
                      active: true,
                      text: 'Əl yazma',
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 24.0,
                          width: 24.0,
                          child: CustChecbox(
                            value: provider.isManuscript,
                            onChanged: (value) {
                              provider.setisManuscript(value ?? false);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    const TabBarItem(
                      checkbox: true,
                      width: 471,
                      value: 0,
                      active: true,
                      text: 'Peçat',
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 24.0,
                          width: 24.0,
                          child: CustChecbox(
                            value: provider.isStamp,
                            onChanged: (value) {
                              provider.setisStamp(value ?? false);
                            },
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18.h),
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.h),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffDDDDDD)),
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  child: Text(
                    "Qeyd",
                    style: TextStyle(color: Colors.black, fontSize: 40.sp),
                  ),
                ),
                Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 380
                                .h, //     <-- TextField expands to this height.
                            child: TextField(
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40.sp,
                                fontStyle: provider.isManuscript
                                    ? FontStyle.italic
                                    : FontStyle.normal,
                              ),
                              keyboardType: TextInputType.multiline,
                              maxLines: 20,
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: Color(0xffDDDDDD)), //<-- SEE HERE
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffDDDDDD), width: 1.0),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
