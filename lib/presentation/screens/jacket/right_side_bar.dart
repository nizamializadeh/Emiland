import 'package:emiland/presentation/screens/jacket/components/style_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../provider/suit_data_provider.dart';
import '../trousers.dart';
import 'components/info_section.dart';
import 'components/model.dart';

class JacketRightSideBar extends StatelessWidget {
  const JacketRightSideBar({super.key});

  @override
  Widget build(BuildContext context) {
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
                    title: const Text('Tabs Demo'),
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
                        const Column(
                          children: [
                            Model(),
                          ],
                        ),
                        const Column(
                          children: [],
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
            color: Colors.amber,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Provider.of<SuitDataProvider>(context, listen: true)
                        .map1['boyun']
                        .toString(),
                    style: TextStyle(color: Colors.black, fontSize: 55.sp),
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ElevatedButton(
                        child: const Icon(Icons.add),
                        onPressed: () {
                          // suitInstance.incrementCount();
                        },
                      ),
                      ElevatedButton(
                        child: const Icon(Icons.remove),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 50.sp),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
