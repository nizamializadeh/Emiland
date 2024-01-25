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
        suitInstance.activateAllSuit();
      },
      child: Container(
        margin: EdgeInsets.only(top: 114.h),
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            top: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
        ),
        width: 1705.w,
        height: 1930.h,
        child: Provider.of<SuitDataProvider>(context, listen: true)
                .modelSelected
            ? Center(
                child: Image.asset(
                  'assets/png/suit.png',
                ),
              )
            : Row(
                children: [
                  Stack(
                    children: [
                      SingleSuit(
                        active: suitInstance.item1,
                        onclick: () {
                          suitInstance.deactivateAllSuit();
                          suitInstance.activateSuit(suitInstance.item1 = true);
                        },
                        img: 'assets/prototip/proto1.png',
                      ),
                      suitInstanceTrue.map2['boyun']!
                          ? SingleSuit(
                              active: suitInstance.item1,
                              onclick: () {
                                suitInstance.deactivateAllSuit();
                                suitInstance
                                    .activateSuit(suitInstance.item1 = true);
                              },
                              img: 'assets/prototip/test.png',
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                  SingleSuit(
                    active: suitInstance.item2,
                    onclick: () {
                      suitInstance.deactivateAllSuit();
                      suitInstance.activateSuit(suitInstance.item2 = true);
                    },
                    img: 'assets/prototip/proto2.png',
                  ),
                  SingleSuit(
                    active: suitInstance.item3,
                    onclick: () {
                      suitInstance.deactivateAllSuit();
                      suitInstance.activateSuit(suitInstance.item3 = true);
                    },
                    img: 'assets/prototip/proto3.png',
                  ),
                  SingleSuit(
                    active: suitInstance.item4,
                    onclick: () {
                      suitInstance.deactivateAllSuit();
                      suitInstance.activateSuit(suitInstance.item4 = true);
                      tabbarProvider.deleteItem();
                    },
                    img: 'assets/prototip/proto4.png',
                  ),
                ],
              ),
      ),
    );
  }
}
