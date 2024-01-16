import 'package:emiland/presentation/screens/lekals/single_suit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../provider/suit_data_provider.dart';

class JacketLeftSideBar extends StatelessWidget {
  const JacketLeftSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: false);
    return GestureDetector(
      onTap: () {
        suitInstance.deactivateAllSuit();
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
        child: Row(
          children: [
            SingleSuit(
              active: suitInstance.item1,
              onclick: () {
                suitInstance.deactivateAllSuit();
                suitInstance.activateSuit(suitInstance.item1 = true);
              },
              img: 'assets/prototip/prototip1.png',
            ),
            SingleSuit(
              active: suitInstance.item2,
              onclick: () {
                suitInstance.deactivateAllSuit();
                suitInstance.activateSuit(suitInstance.item2 = true);
              },
              img: 'assets/prototip/prototip2.png',
            ),
            SingleSuit(
              active: suitInstance.item3,
              onclick: () {
                suitInstance.deactivateAllSuit();
                suitInstance.activateSuit(suitInstance.item3 = true);
              },
              img: 'assets/prototip/prototip3.png',
            ),
            SingleSuit(
              active: suitInstance.item4,
              onclick: () {
                suitInstance.deactivateAllSuit();
                suitInstance.activateSuit(suitInstance.item4 = true);
              },
              img: 'assets/prototip/prototip4.png',
            ),
          ],
        ),
      ),
    );
  }
}
