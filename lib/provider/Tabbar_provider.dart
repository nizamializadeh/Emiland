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
    // final List<TabBarItem> items = [
    //   TabBarItem(
    //     width: double.infinity,
    //     value: suitInstanceTrue.map1['Qabaq uzunluq']!,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Qabaq uzunluq');
    //     },
    //     active: suitInstanceTrue.item1,
    //     text: 'Qabaq uzunluq',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Arxa uzunluq');
    //     },
    //     value: suitInstanceTrue.map1['Arxa uzunluq'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Arxa uzunluq',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     value: suitInstanceTrue.map1['Qol']!,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Qol');
    //     },
    //     active: suitInstanceTrue.item1,
    //     text: 'Qol',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Çiyin');
    //     },
    //     value: suitInstanceTrue.map1['Çiyin'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Çiyin',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Boyun');
    //     },
    //     value: suitInstanceTrue.map1['Boyun'],
    //     active: suitInstanceTrue.item1,
    //     text: 'Boyun',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //
    //       bottomSheet(context, suitInstance, 'En');
    //     },
    //     value: suitInstanceTrue.map1['En'],
    //     active: suitInstanceTrue.item4,
    //     text: 'En',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     value: suitInstanceTrue.map1['Vatka']!,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Vatka');
    //     },
    //     active: suitInstanceTrue.item1,
    //     text: 'Vatka',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     value: suitInstanceTrue.map1['Qol qat']!,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Qol qat');
    //     },
    //     active: suitInstanceTrue.item1,
    //     text: 'Qol qat',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     value: suitInstanceTrue.map1['Qabaq hissə']!,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Qabaq hissə');
    //     },
    //     active: suitInstanceTrue.item1,
    //     text: 'Qabaq hissə',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     value: suitInstanceTrue.map1['Boyun doldurmaq/açmaq']!,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Boyun doldurmaq/açmaq');
    //     },
    //     active: suitInstanceTrue.item1,
    //     text: 'Boyun doldurmaq/açmaq',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     value: suitInstanceTrue.map1['Çiyin qaldır/düş']!,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Çiyin qaldır/düş');
    //     },
    //     active: suitInstanceTrue.item1,
    //     text: 'Çiyin qaldır/düş',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     value: suitInstanceTrue.map1['Cib artırmaq/azaltmaq']!,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Cib artırmaq/azaltmaq');
    //     },
    //     active: suitInstanceTrue.item1,
    //     text: 'Cib artırmaq/azaltmaq',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Cib sinə artır/azalt');
    //     },
    //     value: suitInstanceTrue.map1['Cib sinə artır/azalt'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Cib sinə artır/azalt',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Sinə artır/azalt');
    //     },
    //     value: suitInstanceTrue.map1['Sinə artır/azalt'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Sinə artır/azalt',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Uzunluq artır/azalt');
    //     },
    //     value: suitInstanceTrue.map1['Uzunluq artır/azalt'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Uzunluq artır/azalt',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Boyun artırmaq/çıxmaq');
    //     },
    //     value: suitInstanceTrue.map1['Boyun artırmaq/çıxmaq'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Boyun artırmaq/çıxmaq',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Qabaq aç / bağla');
    //     },
    //     value: suitInstanceTrue.map1['Qabaq aç / bağla'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Qabaq aç / bağla',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Qabaq artırmaq/azaltmaq');
    //     },
    //     value: suitInstanceTrue.map1['Qabaq artırmaq/azaltmaq'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Qabaq artırmaq/azaltmaq',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(
    //           context, suitInstance, 'Boyun dərinləşdirmək / qaldırmaq');
    //     },
    //     value: suitInstanceTrue.map1['Boyun dərinləşdirmək / qaldırmaq'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Boyun dərinləşdirmək / qaldırmaq',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Boyundan aşağıya qədər çıx');
    //     },
    //     value: suitInstanceTrue.map1['Boyundan aşağıya qədər çıx'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Boyundan aşağıya qədər çıx',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Çiyin artırmaq/çıxartmaq');
    //     },
    //     value: suitInstanceTrue.map1['Çiyin artırmaq/çıxartmaq'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Çiyin artırmaq/çıxartmaq',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'En çıx/artır');
    //     },
    //     value: suitInstanceTrue.map1['En çıx/artır'],
    //     active: suitInstanceTrue.item4,
    //     text: 'En çıx/artır',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Qol dibi sal/qaldır');
    //     },
    //     value: suitInstanceTrue.map1['Qol dibi sal/qaldır'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Qol dibi sal/qaldır',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Kürək açmaq');
    //     },
    //     value: suitInstanceTrue.map1['Kürək açmaq'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Kürək açmaq',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Kürək aşağısından çıx');
    //     },
    //     value: suitInstanceTrue.map1['Kürək aşağısından çıx'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Kürək aşağısından çıx',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Razrez artır/azalt');
    //     },
    //     value: suitInstanceTrue.map1['Razrez artır/azalt'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Razrez artır/azalt',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Talya çıx');
    //     },
    //     value: suitInstanceTrue.map1['Talya çıx'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Talya çıx',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Böyür hissə ağzını aç');
    //     },
    //     value: suitInstanceTrue.map1['Böyür hissə ağzını aç'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Böyür hissə ağzını aç',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(
    //           context, suitInstance, 'Böyür hissə yan tərəf artırmaq/azaltmaq');
    //     },
    //     value: suitInstanceTrue.map1['Böyür hissə yan tərəf artırmaq/azaltmaq'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Böyür hissə yan tərəf artırmaq/azaltmaq',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Qol dibi qaldır/aşağı sal');
    //     },
    //     value: suitInstanceTrue.map1['Qol dibi qaldır/aşağı sal'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Qol dibi qaldır/aşağı sal',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Dirsək artır/azalt');
    //     },
    //     value: suitInstanceTrue.map1['Dirsək artır/azalt'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Dirsək artır/azalt',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Qolovka artır/azalt');
    //     },
    //     value: suitInstanceTrue.map1['Qolovka artır/azalt'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Qolovka artır/azalt',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Qolun aşağı hissəsi artır/azalt');
    //     },
    //     value: suitInstanceTrue.map1['Qolun aşağı hissəsi artır/azalt'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Qolun aşağı hissəsi artır/azalt',
    //   ),
    //   TabBarItem(
    //     width: double.infinity,
    //     onTap: () {
    //       suitInstanceTrue.bottomsheetOpen();
    //       bottomSheet(context, suitInstance, 'Qol eni artır/azalt');
    //     },
    //     value: suitInstanceTrue.map1['Qol eni artır/azalt'],
    //     active: suitInstanceTrue.item4,
    //     text: 'Qol eni artır/azalt',
    //   ),
    // ];
    final List<TabBarItem> items = [
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Arxa uzunluq');
        },
        value: suitInstanceTrue.map1['Arxa uzunluq'],
        active: suitInstanceTrue.item2,
        text: 'Arxa uzunluq',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Böyür hissə ağzını aç']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Böyür hissə ağzını aç');
        },
        active: suitInstanceTrue.item1,
        text: 'Böyür hissə ağzını aç',
      ),
      TabBarItem(
        width: double.infinity,
        value:
            suitInstanceTrue.map1['Böyür hissə yan tərəf artırmaq/azaltmaq']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(
              context, suitInstance, 'Böyür hissə yan tərəf artırmaq/azaltmaq');
        },
        active: suitInstanceTrue.item2,
        text: 'Böyür hissə yan tərəf artırmaq/azaltmaq',
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
          bottomSheet(context, suitInstance, 'Boyun artırmaq/çıxmaq');
        },
        value: suitInstanceTrue.map1['Boyun artırmaq/çıxmaq'],
        active: suitInstanceTrue.item2,
        text: 'Boyun artırmaq/çıxmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(
              context, suitInstance, 'Boyun dərinləşdirmək / qaldırmaq');
        },
        value: suitInstanceTrue.map1['Boyun dərinləşdirmək / qaldırmaq'],
        active: suitInstanceTrue.item1,
        text: 'Boyun dərinləşdirmək / qaldırmaq',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Cib artırmaq/azaltmaq']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Cib artırmaq/azaltmaq');
        },
        active: suitInstanceTrue.item1,
        text: 'Cib artırmaq/azaltmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Cib sinə artır/azalt');
        },
        value: suitInstanceTrue.map1['Cib sinə artır/azalt'],
        active: suitInstanceTrue.item2,
        text: 'Cib sinə artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Çiyin');
        },
        value: suitInstanceTrue.map1['Çiyin'],
        active: suitInstanceTrue.item1,
        text: 'Çiyin',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Çiyin artırmaq/çıxartmaq');
        },
        value: suitInstanceTrue.map1['Çiyin artırmaq/çıxartmaq'],
        active: suitInstanceTrue.item3,
        text: 'Çiyin artırmaq/çıxartmaq',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Çiyin qaldır/düş']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Çiyin qaldır/düş');
        },
        active: suitInstanceTrue.item1,
        text: 'Çiyin qaldır/düş',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Dirsək artır/azalt');
        },
        value: suitInstanceTrue.map1['Dirsək artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Dirsək artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'En');
        },
        value: suitInstanceTrue.map1['En'],
        active: suitInstanceTrue.item1,
        text: 'En',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'En çıx/artır');
        },
        value: suitInstanceTrue.map1['En çıx/artır'],
        active: suitInstanceTrue.item3,
        text: 'En çıx/artır',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Kürək aşağısından çıx');
        },
        value: suitInstanceTrue.map1['Kürək aşağısından çıx'],
        active: suitInstanceTrue.item2,
        text: 'Kürək aşağısından çıx',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Kürək açmaq');
        },
        value: suitInstanceTrue.map1['Kürək açmaq'],
        active: suitInstanceTrue.item2,
        text: 'Kürək açmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qabaq artırmaq/azaltmaq');
        },
        value: suitInstanceTrue.map1['Qabaq artırmaq/azaltmaq'],
        active: suitInstanceTrue.item2,
        text: 'Qabaq artırmaq/azaltmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qabaq aç / bağla');
        },
        value: suitInstanceTrue.map1['Qabaq aç / bağla'],
        active: suitInstanceTrue.item3,
        text: 'Qabaq aç / bağla',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qabaq uzunluq');
        },
        value: suitInstanceTrue.map1['Qabaq uzunluq']!,
        active: suitInstanceTrue.item1,
        text: 'Qabaq uzunluq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qol');
        },
        value: suitInstanceTrue.map1['Qol']!,
        active: suitInstanceTrue.item4,
        text: 'Qol',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qol dibi qaldır/aşağı sal');
        },
        value: suitInstanceTrue.map1['Qol dibi qaldır/aşağı sal'],
        active: suitInstanceTrue.item4,
        text: 'Qol dibi qaldır/aşağı sal',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qol eni artır/azalt');
        },
        value: suitInstanceTrue.map1['Qol eni artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Qol eni artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qol qat');
        },
        value: suitInstanceTrue.map1['Qol qat']!,
        active: suitInstanceTrue.item1,
        text: 'Qol qat',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qolovka artır/azalt');
        },
        value: suitInstanceTrue.map1['Qolovka artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Qolovka artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qolun aşağı hissəsi artır/azalt');
        },
        value: suitInstanceTrue.map1['Qolun aşağı hissəsi artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Qolun aşağı hissəsi artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Razrez artır/azalt');
        },
        value: suitInstanceTrue.map1['Razrez artır/azalt'],
        active: suitInstanceTrue.item3,
        text: 'Razrez artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Sinə artır/azalt');
        },
        value: suitInstanceTrue.map1['Sinə artır/azalt'],
        active: suitInstanceTrue.item2,
        text: 'Sinə artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Talya çıx');
        },
        value: suitInstanceTrue.map1['Talya çıx'],
        active: suitInstanceTrue.item3,
        text: 'Talya çıx',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Uzunluq artır/azalt');
        },
        value: suitInstanceTrue.map1['Uzunluq artır/azalt'],
        active: suitInstanceTrue.item2,
        text: 'Uzunluq artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Vatka');
        },
        value: suitInstanceTrue.map1['Vatka']!,
        active: suitInstanceTrue.item2,
        text: 'Vatka',
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
