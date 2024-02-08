import 'package:emiland/presentation/screens/lekals/tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../provider/Tabbar_provider.dart';
import '../../../provider/suit_data_provider.dart';
import 'add_value.dart';
import 'bottomsheet_button.dart';

Future<void> bottomSheet(
    BuildContext context, SuitDataProvider suitInstance, String name) {
  return showModalBottomSheet<void>(
    constraints: BoxConstraints(
      maxWidth: double.infinity,
    ),
    backgroundColor: Colors.transparent,
    barrierColor: Colors.transparent,
    elevation: 0,
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return Align(
          alignment: Alignment.bottomRight,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 513,
            ),
            child: Container(
              height: 1000.h,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border(
                  top: BorderSide(width: 1.0, color: Color(0xFFDADADA)),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          name,
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 1,
                          indent: 100,
                          endIndent: 100,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20.h, horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                                color: Color(0xffEF5C59),
                              ),
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 30.sp, color: Colors.black),
                                onChanged: (value) {
                                  value = '-$value';
                                  suitInstance.DataCouter(
                                      int.parse(value), name);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 0.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0.1, color: Colors.red),
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0),
                                ),
                                color: Color(0xFF62EF8A),
                              ),
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 30.sp, color: Colors.black),
                                onChanged: (value) {
                                  suitInstance.DataCouter(
                                      int.parse(value), name);
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.yellow, width: 0.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black26),
                                  ),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20.h, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              AddValue(
                                value: '2',
                                color: Color(0xffEF5C59),
                                func: () {},
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AddValue(
                                value: '1.5',
                                color: Color(0xffEF5C59),
                                func: () {},
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AddValue(
                                value: '1.5',
                                color: Color(0xFF62EF8A),
                                func: () {},
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AddValue(
                                value: '0.5',
                                color: Color(0xFF62EF8A),
                                func: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20.h, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              AddValue(
                                value: '0.5',
                                color: Color(0xffEF5C59),
                                func: () {},
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AddValue(
                                value: '2.5',
                                color: Color(0xffEF5C59),
                                func: () {},
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AddValue(
                                value: '1.5',
                                color: Color(0xFF62EF8A),
                                func: () {},
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AddValue(
                                value: '1.5',
                                color: Color(0xFF62EF8A),
                                func: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20.h, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              AddValue(
                                value: '2',
                                color: Color(0xffEF5C59),
                                func: () {
                                  suitInstance.DataCouter(-2, name);
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AddValue(
                                value: '1.5',
                                color: Color(0xffEF5C59),
                                func: () {
                                  // xlist.add(name,-1.5)
                                  Provider.of<SuitDataProvider>(context,
                                          listen: false)
                                      .result
                                      .add(
                                        Container(
                                          width: double.infinity,
                                          child: TabBarItem(
                                            text: name,
                                            value: -1.5,
                                          ),
                                        ),
                                      );

                                  suitInstance.DataCouter(-1.5, name);
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AddValue(
                                value: '2',
                                color: Color(0xFF62EF8A),
                                func: () {
                                  suitInstance.DataCouter(2, name);
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AddValue(
                                value: '2.5',
                                color: Color(0xFF62EF8A),
                                func: () {
                                  Provider.of<SuitDataProvider>(context,
                                          listen: false)
                                      .result
                                      .add(
                                        Container(
                                          width: double.infinity,
                                          child: TabBarItem(
                                            text: name,
                                            value: 2.5,
                                          ),
                                        ),
                                      );
                                  suitInstance.DataCouter(2.5, name);

                                  // name = name.toLowerCase();
                                  // Provider.of<SuitDataProvider>(context,
                                  //         listen: false)
                                  //     .map2[name] = true;
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20.h, horizontal: 10),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            BottomSheetButton(
                              name: 'Decline',
                              textColor: Colors.black,
                              backgorundcolor: Colors.white,
                              func: () {
                                Navigator.pop(context);
                              },
                            ),
                            SizedBox(
                              width: 24.w,
                            ),
                            BottomSheetButton(
                              name: 'Apply',
                              textColor: Colors.white,
                              backgorundcolor: Colors.black,
                              func: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
    },
  );
}
