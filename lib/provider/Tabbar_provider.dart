import 'package:emiland/provider/suit_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../presentation/components/bottom_sheet/bottom_sheet.dart';
import '../presentation/screens/lekals/tab_bar_item.dart';

class TabbarProvider extends ChangeNotifier {
  final BuildContext contextz;

  TabbarProvider(this.contextz);

  List<String> tabLength = [];
  int tabbarIndex = 0;
  List<String> itemsTest = ['3', '2', '1', '4'];
  List<TabBarItem> itemsTest1 = [];

  void doSomething() {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(contextz, listen: false);
    SuitDataProvider suitInstanceTrue =
        Provider.of<SuitDataProvider>(contextz, listen: true);
    final List<TabBarItem> items = [
      TabBarItem(
        width: double.infinity,
        onTap: () {
          // bottomSheet(context, suitInstance, 'Boyun');
        },
        value: 0,
        active: false,
        text: 'Boyun',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          // bottomSheet(context, suitInstance, 'Boyun');
        },
        value: 0,
        active: true,
        text: 'aaa',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qabaq uzunluq']!,
        onTap: () {
          bottomSheet(contextz, suitInstance, 'Qabaq uzunluq');
        },
        active: suitInstanceTrue.item1,
        text: 'Qabaq uzunluq',
      ),
    ];
  }

  // TabBarItem(
  //   width: double.infinity,
  //   onTap: () {
  //     bottomSheet(context, suitInstance, 'Arxa uzunluq');
  //   },
  //   value: suitInstanceTrue.map1['Arxa uzunluq'],
  //   active: suitInstanceTrue.item4,
  //   text: 'Arxa uzunluq',
  // ),
  // TabBarItem(
  //   width: double.infinity,
  //   value: suitInstanceTrue.map1['Qabaq hissə']!,
  //   onTap: () {
  //     bottomSheet(context, suitInstance, 'Qabaq hissə');
  //   },
  //   active: suitInstanceTrue.item1,
  //   text: 'Qabaq hissə',
  // ),
  // TabBarItem(
  //   width: double.infinity,
  //   onTap: () {
  //     bottomSheet(context, suitInstance, 'Çiyin');
  //   },
  //   value: suitInstanceTrue.map1['Çiyin'],
  //   active: suitInstanceTrue.item4,
  //   text: 'Çiyin',
  // ),
  // TabBarItem(
  //   width: double.infinity,
  //   value: suitInstanceTrue.map1['Qol']!,
  //   onTap: () {
  //     bottomSheet(context, suitInstance, 'Qol');
  //   },
  //   active: suitInstanceTrue.item1,
  //   text: 'Qol',
  // ),
  // TabBarItem(
  //   width: double.infinity,
  //   onTap: () {
  //     bottomSheet(context, suitInstance, 'en');
  //   },
  //   value: suitInstanceTrue.map1['en'],
  //   active: suitInstanceTrue.item4,
  //   text: 'En',
  // ),

  void deleteItem() {
    // for (int index = 0; index < itemsTest.length; index += 1) {
    //   if (itemsTest[index] == '1') {
    //     itemsTest1.add(itemsTest[index]);
    //     itemsTest.remove('1');
    //     print(itemsTest1);
    //   } else {
    //     print(113);
    //   }
    // }
    // itemsTest.insert(0, itemsTest1.first);

    for (int index = 0; index < items.length; index += 1) {
      print(itemsTest1);
      if (items[index].active == true) {
        itemsTest1.add(items[index]);
        items.remove(items[index]);
        print(itemsTest1);
      } else {
        print(113);
      }
    }
    items.insert(0, itemsTest1.first);

    notifyListeners();
  }
}
