import 'package:emiland/presentation/screens/jacket/components/style_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../provider/suit_data_provider.dart';
import '../../components/bottom_sheet/bottom_sheet.dart';
import '../jacket/components/info_section.dart';
import '../lekals/tab_bar_item.dart';
import '../trousers.dart';

class ShirtRightSideBar extends StatelessWidget {
  const ShirtRightSideBar({super.key});

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
                            '1.Info/Uslub',
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
                            '3.Xülasə',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 28.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  body: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: TabBarView(
                      children: [
                        Column(
                          children: [
                            InfoSection(),
                            const StyleSection(),
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
                                  value: 0,
                                  active: suitInstanceTrue.item3,
                                  text: 'Qol',
                                ),
                                TabBarItem(
                                  value: 0,
                                  active: suitInstanceTrue.item3,
                                  text: 'Çiyin',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TabBarItem(
                                  value: suitInstanceTrue.map1['boyun']!,
                                  onTap: () {
                                    bottomSheet(context, suitInstance, 'boyun');
                                  },
                                  active: suitInstanceTrue.item1,
                                  text: 'Boyun',
                                ),
                                TabBarItem(
                                  onTap: () {
                                    bottomSheet(context, suitInstance, 'en');
                                  },
                                  value: suitInstanceTrue.map1['en'],
                                  active: suitInstanceTrue.item4,
                                  text: 'En',
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
}
