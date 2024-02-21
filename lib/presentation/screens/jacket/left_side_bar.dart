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
                      Stack(
                        children: [
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
                                  ? 'assets/prototip/eag.png'
                                  : 'assets/prototip/ex1.png'),
                          suitInstanceTrue.map2['Qol dibi qaldır/aşağı sal'] > 0
                              ? SingleSuit(
                                  width: 120,
                                  height: 350,
                                  active: suitInstance.item4,
                                  onclick: () {
                                    suitInstance.deactivateAllSuit();
                                    suitInstance.activateSuit(
                                        suitInstance.item4 = true);
                                    tabbarProvider.deleteItem(context);
                                  },
                                  img: 'assets/prototip/a1.png',
                                )
                              : const SizedBox.shrink(),
                          suitInstanceTrue.map2['Qol dibi qaldır/aşağı sal'] < 0
                              ? SingleSuit(
                                  width: 120,
                                  height: 350,
                                  active: suitInstance.item4,
                                  onclick: () {
                                    suitInstance.deactivateAllSuit();
                                    suitInstance.activateSuit(
                                        suitInstance.item4 = true);
                                    tabbarProvider.deleteItem(context);
                                  },
                                  img: 'assets/prototip/a2.png',
                                )
                              : const SizedBox.shrink(),
                          suitInstanceTrue
                                      .map2['Qolun aşağı hissəsi artır/azalt'] <
                                  0
                              ? SingleSuit(
                                  width: 120,
                                  height: 350,
                                  active: suitInstance.item4,
                                  onclick: () {
                                    suitInstance.deactivateAllSuit();
                                    suitInstance.activateSuit(
                                        suitInstance.item4 = true);
                                    tabbarProvider.deleteItem(context);
                                  },
                                  img: 'assets/prototip/a4.png',
                                )
                              : const SizedBox.shrink(),
                          suitInstanceTrue
                                      .map2['Qolun aşağı hissəsi artır/azalt'] >
                                  0
                              ? SingleSuit(
                                  width: 120,
                                  height: 350,
                                  active: suitInstance.item4,
                                  onclick: () {
                                    suitInstance.deactivateAllSuit();
                                    suitInstance.activateSuit(
                                        suitInstance.item4 = true);
                                    tabbarProvider.deleteItem(context);
                                  },
                                  img: 'assets/prototip/a9.png',
                                )
                              : const SizedBox.shrink(),
                          suitInstanceTrue.map2['Qolovka artır/azalt'] > 0
                              ? SingleSuit(
                                  width: 120,
                                  height: 350,
                                  active: suitInstance.item4,
                                  onclick: () {
                                    suitInstance.deactivateAllSuit();
                                    suitInstance.activateSuit(
                                        suitInstance.item4 = true);
                                    tabbarProvider.deleteItem(context);
                                  },
                                  img: 'assets/prototip/a6.png',
                                )
                              : const SizedBox.shrink(),
                          suitInstanceTrue.map2['Qolovka artır/azalt'] < 0
                              ? SingleSuit(
                                  width: 120,
                                  height: 350,
                                  active: suitInstance.item4,
                                  onclick: () {
                                    suitInstance.deactivateAllSuit();
                                    suitInstance.activateSuit(
                                        suitInstance.item4 = true);
                                    tabbarProvider.deleteItem(context);
                                  },
                                  img: 'assets/prototip/a8.png',
                                )
                              : const SizedBox.shrink(),
                          suitInstanceTrue.map2['Dirsək artır/azalt'] > 0
                              ? SingleSuit(
                                  width: 120,
                                  height: 350,
                                  active: suitInstance.item4,
                                  onclick: () {
                                    suitInstance.deactivateAllSuit();
                                    suitInstance.activateSuit(
                                        suitInstance.item4 = true);
                                    tabbarProvider.deleteItem(context);
                                  },
                                  img: 'assets/prototip/a3.png',
                                )
                              : const SizedBox.shrink(),
                          suitInstanceTrue.map2['Dirsək artır/azalt'] < 0
                              ? SingleSuit(
                                  width: 120,
                                  height: 350,
                                  active: suitInstance.item4,
                                  onclick: () {
                                    suitInstance.deactivateAllSuit();
                                    suitInstance.activateSuit(
                                        suitInstance.item4 = true);
                                    tabbarProvider.deleteItem(context);
                                  },
                                  img: 'assets/prototip/a4.png',
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
