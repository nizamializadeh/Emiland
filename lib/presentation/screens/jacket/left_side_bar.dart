import 'package:emiland/presentation/screens/lekals/single_suit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../provider/Tabbar_provider.dart';
import '../../../provider/suit_data_provider.dart';

class JacketLeftSideBar extends StatelessWidget {
  const JacketLeftSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: false);
    SuitDataProvider suitInstanceTrue =
        Provider.of<SuitDataProvider>(context, listen: true);
    TabbarProvider tabbarProvider =
        Provider.of<TabbarProvider>(context, listen: true);
    return GestureDetector(
      onTap: () {
        suitInstance.activateTabbarItem();
      },
      child: Container(
        margin: EdgeInsets.only(top: 114.h),
        decoration: const BoxDecoration(
          color: Color(0xffF4F4F4),
        ),
        width: 1705.w,
        height: 2040.h,
        child: Provider.of<SuitDataProvider>(context, listen: true)
                .modelSelected
            ? Center(
                child: Image.asset(
                  'assets/png/suit.png',
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 120.w,
                      ),
                      Stack(
                        children: [
                          SingleSuit(
                              width: 120,
                              height: 450,
                              active: suitInstance.item1,
                              onclick: () {
                                suitInstance.deactivateAllSuit();
                                suitInstance
                                    .activateSuit(suitInstance.item1 = true);
                                tabbarProvider.deleteItem(context);
                              },
                              // img: 'assets/prototip/proto1.png',
                              img: suitInstance.item1
                                  ? 'assets/lekal/selected_lekal1.png'
                                  : 'assets/lekal/lekal1.png'),
                          suitInstanceTrue.map2['boyun']!
                              ? SingleSuit(
                                  width: 200,
                                  height: 200,
                                  active: suitInstance.item1,
                                  onclick: () {
                                    suitInstance.deactivateAllSuit();
                                    suitInstance.activateSuit(
                                        suitInstance.item1 = true);
                                  },
                                  img: 'assets/prototip/test.png',
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                      SingleSuit(
                          width: 100,
                          height: 350,
                          active: suitInstance.item2,
                          onclick: () {
                            suitInstance.deactivateAllSuit();
                            suitInstance
                                .activateSuit(suitInstance.item2 = true);
                            tabbarProvider.deleteItem(context);
                          },
                          img: suitInstance.item2
                              ? 'assets/lekal/selected_lekal2.png'
                              : 'assets/lekal/lekal2.png'),
                      SingleSuit(
                          width: 120,
                          height: 450,
                          active: suitInstance.item3,
                          onclick: () {
                            suitInstance.deactivateAllSuit();
                            suitInstance
                                .activateSuit(suitInstance.item3 = true);
                            tabbarProvider.deleteItem(context);
                          },
                          img: suitInstance.item3
                              ? 'assets/lekal/selected_lekal3.png'
                              : 'assets/lekal/lekal3.png'),
                      SingleSuit(
                          width: 120,
                          height: 350,
                          active: suitInstance.item4,
                          onclick: () {
                            suitInstance.deactivateAllSuit();
                            suitInstance
                                .activateSuit(suitInstance.item4 = true);
                            tabbarProvider.deleteItem(context);
                          },
                          img: suitInstance.item4
                              ? 'assets/lekal/selected_lekal4.png'
                              : 'assets/lekal/lekal4.png'),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
