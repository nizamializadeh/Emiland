import 'package:emiland/provider/suit_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../presentation/components/bottom_sheet/bottom_sheet.dart';
import '../presentation/screens/lekals/tab_bar_item.dart';

class TabbarProvider extends ChangeNotifier {
  List<String> tabLength = [];
  int tabbarIndex = 0;
  List<TabBarItem> itemsTest1 = [];
  List<TabBarItem> itemList = [];

  void deleteItem() {
    // SuitDataProvider suitInstance =
    //     Provider.of<SuitDataProvider>(contextz, listen: false);
    // SuitDataProvider suitInstanceTrue =
    //     Provider.of<SuitDataProvider>(contextz, listen: false);
    // final List<TabBarItem> items = [
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       // bottomSheet(context, suitInstance, 'Boyun');
    //     },
    //     value: 0,
    //     active: false,
    //     text: 'Boyun',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       // bottomSheet(context, suitInstance, 'Boyun');
    //     },
    //     value: 0,
    //     active: true,
    //     text: 'aaa',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     value: suitInstanceTrue.map1['Qabaq uzunluq']!,
    //     onTap: () {
    //       bottomSheet(contextz, suitInstance, 'Qabaq uzunluq');
    //     },
    //     active: suitInstanceTrue.item1,
    //     text: 'Qabaq uzunluq',
    //   ),
    // ];

    for (int index = 0; index < itemList.length; index += 1) {
      if (itemList[index].active == true) {
        print(itemList[index].text);
        itemsTest1.add(itemList[index]);
        itemList.remove(itemList[index]);
      }
    }

    itemList.insertAll(0, itemsTest1);
    notifyListeners();
  }
}
