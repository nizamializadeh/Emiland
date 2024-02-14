import 'package:emiland/provider/suit_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../presentation/components/bottom_sheet/bottom_sheet.dart';
import '../presentation/screens/lekals/tab_bar_item.dart';

class TabbarProvider extends ChangeNotifier {
  List<String> tabLength = [];
  int tabbarIndex = 0;
  List<TabBarItem> activItems = [];
  List<TabBarItem> deactivItems = [];
  List<TabBarItem> itemList = [];

  void deleteItem(context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: false);
    SuitDataProvider suitInstanceTrue =
        Provider.of<SuitDataProvider>(context, listen: false);
    final List<TabBarItem> items = [
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qabaq uzunluq']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qabaq uzunluq');
        },
        active: suitInstanceTrue.item1,
        text: 'Qabaq uzunluq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Arxa uzunluq');
        },
        value: suitInstanceTrue.map1['Arxa uzunluq'],
        active: suitInstanceTrue.item4,
        text: 'Arxa uzunluq',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qol']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qol');
        },
        active: suitInstanceTrue.item1,
        text: 'Qol',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Çiyin');
        },
        value: suitInstanceTrue.map1['Çiyin'],
        active: suitInstanceTrue.item4,
        text: 'Çiyin',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Boyun');
        },
        value: suitInstanceTrue.map1['Boyun'],
        active: suitInstanceTrue.item1,
        text: 'Boyun',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();

          bottomSheet(context, suitInstance, 'en');
        },
        value: suitInstanceTrue.map1['en'],
        active: suitInstanceTrue.item4,
        text: 'En',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['vatka']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'vatka');
        },
        active: suitInstanceTrue.item1,
        text: 'vatka',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qol qat']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qol qat');
        },
        active: suitInstanceTrue.item1,
        text: 'Qol qat',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qabaq hissə']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qabaq hissə');
        },
        active: suitInstanceTrue.item1,
        text: 'Qabaq hissə',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['boyun doldurmaq/açmaq']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'boyun doldurmaq/açmaq');
        },
        active: suitInstanceTrue.item1,
        text: 'boyun doldurmaq/açmaq',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['çiyin qaldır/düş']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'çiyin qaldır/düş');
        },
        active: suitInstanceTrue.item1,
        text: 'çiyin qaldır/düş',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['cib artırmaq/azaltmaq']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'cib artırmaq/azaltmaq');
        },
        active: suitInstanceTrue.item1,
        text: 'cib artırmaq/azaltmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'cib sinə artır/azalt');
        },
        value: suitInstanceTrue.map1['cib sinə artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'cib sinə artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'sinə artır/azalt');
        },
        value: suitInstanceTrue.map1['sinə artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'sinə artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'uzunluq artır/azalt');
        },
        value: suitInstanceTrue.map1['uzunluq artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'uzunluq artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'boyun artırmaq/çıxmaq');
        },
        value: suitInstanceTrue.map1['boyun artırmaq/çıxmaq'],
        active: suitInstanceTrue.item4,
        text: 'boyun artırmaq/çıxmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'qabaq aç / bağla');
        },
        value: suitInstanceTrue.map1['qabaq aç / bağla'],
        active: suitInstanceTrue.item4,
        text: 'qabaq aç / bağla',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'qabaq artırmaq/azaltmaq');
        },
        value: suitInstanceTrue.map1['qabaq artırmaq/azaltmaq'],
        active: suitInstanceTrue.item4,
        text: 'qabaq artırmaq/azaltmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(
              context, suitInstance, 'boyun dərinləşdirmək / qaldırmaq');
        },
        value: suitInstanceTrue.map1['boyun dərinləşdirmək / qaldırmaq'],
        active: suitInstanceTrue.item4,
        text: 'boyun dərinləşdirmək / qaldırmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'boyundan aşağıya qədər çıx');
        },
        value: suitInstanceTrue.map1['boyundan aşağıya qədər çıx'],
        active: suitInstanceTrue.item4,
        text: 'boyundan aşağıya qədər çıx',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'çiyin artırmaq/çıxartmaq');
        },
        value: suitInstanceTrue.map1['çiyin artırmaq/çıxartmaq'],
        active: suitInstanceTrue.item4,
        text: 'çiyin artırmaq/çıxartmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'en çıx/artır');
        },
        value: suitInstanceTrue.map1['en çıx/artır'],
        active: suitInstanceTrue.item4,
        text: 'en çıx/artır',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'qol dibi sal/qaldır');
        },
        value: suitInstanceTrue.map1['qol dibi sal/qaldır'],
        active: suitInstanceTrue.item4,
        text: 'qol dibi sal/qaldır',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'kürək açmaq');
        },
        value: suitInstanceTrue.map1['kürək açmaq'],
        active: suitInstanceTrue.item4,
        text: 'kürək açmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'kürək aşağısından çıx');
        },
        value: suitInstanceTrue.map1['kürək aşağısından çıx'],
        active: suitInstanceTrue.item4,
        text: 'kürək aşağısından çıx',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'razrez artır/azalt');
        },
        value: suitInstanceTrue.map1['razrez artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'razrez artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'talya çıx');
        },
        value: suitInstanceTrue.map1['talya çıx'],
        active: suitInstanceTrue.item4,
        text: 'talya çıx',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'böyür hissə ağzını aç');
        },
        value: suitInstanceTrue.map1['böyür hissə ağzını aç'],
        active: suitInstanceTrue.item4,
        text: 'böyür hissə ağzını aç',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(
              context, suitInstance, 'böyür hissə yan tərəf artırmaq/azaltmaq');
        },
        value: suitInstanceTrue.map1['böyür hissə yan tərəf artırmaq/azaltmaq'],
        active: suitInstanceTrue.item4,
        text: 'böyür hissə yan tərəf artırmaq/azaltmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'qol dibi qaldır/aşağı sal');
        },
        value: suitInstanceTrue.map1['qol dibi qaldır/aşağı sal'],
        active: suitInstanceTrue.item4,
        text: 'qol dibi qaldır/aşağı sal',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'dirsək artır/azalt');
        },
        value: suitInstanceTrue.map1['dirsək artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'dirsək artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'qolovka artır/azalt');
        },
        value: suitInstanceTrue.map1['qolovka artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'qolovka artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'qolun aşağı hissəsi artır/azalt');
        },
        value: suitInstanceTrue.map1['qolun aşağı hissəsi artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'qolun aşağı hissəsi artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'qol eni artır/azalt');
        },
        value: suitInstanceTrue.map1['qol eni artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'qol eni artır/azalt',
      ),
    ];

    itemList.clear();
    activItems.clear();
    deactivItems.clear();

    for (int index = 0; index < items.length; index += 1) {
      if (items[index].active == true) {
        activItems.add(items[index]);
      } else {
        deactivItems.add(items[index]);
      }
    }
    int lastItemIndex = activItems.length;
    itemList.insertAll(0, activItems);
    itemList.insertAll(lastItemIndex, deactivItems);
    notifyListeners();
  }
}
