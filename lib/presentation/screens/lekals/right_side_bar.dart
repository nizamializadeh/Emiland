import 'package:emiland/presentation/screens/lekals/tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../provider/suit_data_provider.dart';
import '../trousers.dart';

class RightSideBar extends StatelessWidget {
  const RightSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: false);
    SuitDataProvider suitInstanceTrue =
        Provider.of<SuitDataProvider>(context, listen: true);

    return Container(
        margin: EdgeInsets.only(top: 114.h),
        width: 1005.w,
        child: Column(
          children: [
            Text(
              'Size measurements',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 50.sp,
                  fontWeight: FontWeight.w500),
            ),
            Expanded(
              flex: 9,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    bottom: TabBar(
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            '1.Info',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 28.sp),
                          ),
                        ),
                        Tab(
                          child: Text(
                            '2.Ölçü',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 28.sp),
                          ),
                        ),
                        Tab(
                          child: Text(
                            '3.Uslub',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 28.sp),
                          ),
                        ),
                      ],
                    ),
                    title: const Text('Tabs Demo'),
                  ),
                  body: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: TabBarView(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 42.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  active: suitInstanceTrue.item2,
                                  text: 'test',
                                ),
                                TabBarItem(
                                  active: suitInstanceTrue.item2,
                                  text: 'test',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  active: suitInstanceTrue.item2,
                                  text: 'test',
                                ),
                                TabBarItem(
                                  active: suitInstanceTrue.item2,
                                  text: 'test',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  active: suitInstanceTrue.item2,
                                  text: 'test',
                                ),
                                TabBarItem(
                                  active: suitInstanceTrue.item2,
                                  text: 'test',
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 42.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    TabBarItem(
                                      active: suitInstanceTrue.item2,
                                      text: 'Kəsik',
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Checkbox(
                                          checkColor: Colors.white,
                                          isError: true,
                                          tristate: true,
                                          value: false,
                                          onChanged: null,
                                        ),
                                        Text(
                                          '2',
                                          style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Checkbox(
                                          checkColor: Colors.white,
                                          isError: true,
                                          tristate: true,
                                          value: false,
                                          onChanged: null,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    TabBarItem(
                                      active: suitInstanceTrue.item2,
                                      text: 'Bort',
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Checkbox(
                                          checkColor: Colors.white,
                                          isError: true,
                                          tristate: true,
                                          value: false,
                                          onChanged: null,
                                        ),
                                        Text(
                                          '2',
                                          style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Checkbox(
                                          checkColor: Colors.white,
                                          isError: true,
                                          tristate: true,
                                          value: false,
                                          onChanged: null,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    TabBarItem(
                                      active: suitInstanceTrue.item2,
                                      text: 'Düymə',
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Checkbox(
                                          checkColor: Colors.white,
                                          isError: true,
                                          tristate: true,
                                          value: false,
                                          onChanged: null,
                                        ),
                                        Text(
                                          '2',
                                          style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Checkbox(
                                          checkColor: Colors.white,
                                          isError: true,
                                          tristate: true,
                                          value: false,
                                          onChanged: null,
                                        ),
                                        Text(
                                          '3',
                                          style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Checkbox(
                                          checkColor: Colors.white,
                                          isError: true,
                                          tristate: true,
                                          value: false,
                                          onChanged: null,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    TabBarItem(
                                      active: suitInstanceTrue.item2,
                                      text: 'Cib',
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Checkbox(
                                          checkColor: Colors.white,
                                          isError: true,
                                          tristate: true,
                                          value: false,
                                          onChanged: null,
                                        ),
                                        Text(
                                          '2',
                                          style: TextStyle(
                                            fontSize: 30.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Checkbox(
                                          checkColor: Colors.white,
                                          isError: true,
                                          tristate: true,
                                          value: false,
                                          onChanged: null,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  active: suitInstanceTrue.item2,
                                  text: 'Qabaq uzunluq',
                                ),
                                TabBarItem(
                                  text: 'Arxa uzunluq',
                                  active: suitInstanceTrue.item2,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  active: suitInstanceTrue.item2,
                                  text: 'Diz',
                                ),
                                TabBarItem(
                                  active: suitInstanceTrue.item3,
                                  text: 'Forması',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  active: suitInstanceTrue.item3,
                                  text: 'Qol',
                                ),
                                TabBarItem(
                                  active: suitInstanceTrue.item3,
                                  text: 'Çiyin',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  onTap: () {
                                    bottomSheet(context, suitInstance);
                                  },
                                  active: suitInstanceTrue.item1,
                                  text: 'Boyun',
                                ),
                                TabBarItem(
                                  active: suitInstanceTrue.item4,
                                  text: 'En',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  active: suitInstanceTrue.item4,
                                  text: 'Vatka',
                                ),
                                TabBarItem(
                                  active: suitInstanceTrue.item4,
                                  text: 'Qol qat',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  active: suitInstanceTrue.item4,
                                  text: 'Qabaq hissə',
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 42.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  active: suitInstanceTrue.item3,
                                  text: 's',
                                ),
                                TabBarItem(
                                  active: suitInstanceTrue.item3,
                                  text: 's',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  active: suitInstanceTrue.item3,
                                  text: 's',
                                ),
                                TabBarItem(
                                  active: suitInstanceTrue.item3,
                                  text: 's',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  active: suitInstanceTrue.item3,
                                  text: 's',
                                ),
                                TabBarItem(
                                  active: suitInstanceTrue.item2,
                                  text: 's',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 80.h,
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 40.sp),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Trousers(),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }

  Future<void> bottomSheet(
      BuildContext context, SuitDataProvider suitInstance) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Container(
            height: 200,
            color: Colors.black26,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Provider.of<SuitDataProvider>(context, listen: true)
                        .map1['boyun']
                        .toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 55.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        child: const Icon(Icons.add),
                        onPressed: () {
                          // suitInstance.incrementCount();
                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        child: const Icon(Icons.remove),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text(
                        'Save',
                        style: TextStyle(fontSize: 50.sp),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
