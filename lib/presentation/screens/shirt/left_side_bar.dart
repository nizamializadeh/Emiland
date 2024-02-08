import 'package:emiland/presentation/screens/lekals/single_suit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../provider/suit_data_provider.dart';

class ShirtLeftSideBar extends StatelessWidget {
  const ShirtLeftSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: false);
    SuitDataProvider suitInstanceTrue =
        Provider.of<SuitDataProvider>(context, listen: true);
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
        child: Row(
          children: [
            // Stack(
            //   children: [
            //     SingleSuit(
            //         active: suitInstance.item1,
            //         onclick: () {
            //           print(suitInstanceTrue.map2['boyun']);
            //           suitInstance.deactivateAllSuit();
            //           suitInstance.activateSuit(suitInstance.item1 = true);
            //         },
            //         img: suitInstance.item1
            //             ? 'assets/prototip/prototip1.png'
            //             : 'assets/prototip/gray_prototip1.png'),
            //     suitInstanceTrue.map2['boyun']!
            //         ? SingleSuit(
            //             active: suitInstance.item1,
            //             onclick: () {
            //               suitInstance.deactivateAllSuit();
            //               suitInstance.activateSuit(suitInstance.item1 = true);
            //             },
            //             img: 'assets/prototip/testboyun.png',
            //           )
            //         : const SizedBox.shrink(),
            //   ],
            // ),
            // Stack(
            //   children: [
            //     SingleSuit(
            //         active: suitInstance.item2,
            //         onclick: () {
            //           suitInstance.deactivateAllSuit();
            //           suitInstance.activateSuit(suitInstance.item2 = true);
            //         },
            //         img: suitInstance.item2
            //             ? 'assets/prototip/prototip2.png'
            //             : 'assets/prototip/gray_prototip2.png'),
            //   ],
            // ),
            // Stack(
            //   children: [
            //     suitInstanceTrue.map2['boyun']!
            //         ? SingleSuit(
            //             active: suitInstance.item3,
            //             onclick: () {
            //               suitInstance.deactivateAllSuit();
            //               suitInstance.activateSuit(suitInstance.item3 = true);
            //             },
            //             img: 'assets/prototip/x3.png',
            //           )
            //         : const SizedBox.shrink(),
            //     SingleSuit(
            //         active: suitInstance.item3,
            //         onclick: () {
            //           suitInstance.deactivateAllSuit();
            //           suitInstance.activateSuit(suitInstance.item3 = true);
            //         },
            //         img: suitInstance.item3
            //             ? 'assets/prototip/last1.png'
            //             : 'assets/prototip/gray_prototip3.png'),
            //   ],
            // ),
            // Stack(
            //   children: [
            //     SingleSuit(
            //         active: suitInstance.item4,
            //         onclick: () {
            //           suitInstance.deactivateAllSuit();
            //           suitInstance.activateSuit(suitInstance.item4 = true);
            //         },
            //         img: suitInstance.item4
            //             ? 'assets/prototip/prototip4.png'
            //             : 'assets/prototip/gray_prototip4.png'),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
