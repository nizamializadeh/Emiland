import 'package:emiland/presentation/screens/lekals/tab_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuitDataProvider extends ChangeNotifier {
  List<Container> result = [];
  int tabbarIndex = 0;
  int resultIndex = 0;
  bool resultUniqe = false;
  bool activedAllTabbar = true;
  bool bottomsheetIsOpened = false;

  Map<String, dynamic> map1 = {
    'Qabaq uzunluq': 0,
    'Arxa uzunluq': 0,
    'Qabaq hissə': 0,
    'Çiyin': 0,
    'Forması art.': 0,
    'Qol': 0,
    'Boyun': 0,
    'En': 0,
    'Vatka': 0,
    'Qol qat': 0,
    'Boyun doldurmaq/açmaq': 0,
    'Çiyin qaldır/düş': 0,
    'Cib artırmaq/azaltmaq': 0,
    'Cib sinə artır/azalt': 0,
    'Sinə artır/azalt': 0,
    'Uzunluq artır/azalt': 0,
    'Boyun artırmaq/çıxmaq': 0,
    'Qabaq aç / bağla': 0,
    'Qabaq artırmaq/azaltmaq': 0,
    'Boyun dərinləşdirmək / qaldırmaq': 0,
    'Boyundan aşağıya qədər çıx': 0,
    'Çiyin artırmaq/çıxartmaq': 0,
    'En çıx/artır': 0,
    'Qol dibi sal/qaldır': 0,
    'Kürək açmaq': 0,
    'Kürək aşağısından çıx': 0,
    'Razrez artır/azalt': 0,
    'Talya çıx': 0,
    'Böyür hissə ağzını aç': 0,
    'Böyür hissə yan tərəf artırmaq/azaltmaq': 0,
    'Qol dibi qaldır/aşağı sal': 0,
    'Dirsək artır/azalt': 0,
    'Qolovka artır/azalt': 0,
    'Qolun aşağı hissəsi artır/azalt': 0,
    'Qol eni artır/azalt': 0,
  };

  Map<String, dynamic> map2 = {
    'En': 0,
    'Boyun': 0,
    'Qol dibi qaldır/aşağı sal': 0,
    'Qolun aşağı hissəsi artır/azalt': 0,
    'Qolovka artır/azalt': 0,
    'Dirsək artır/azalt': 0,
  };

  bool item1 = false;
  bool item2 = false;
  bool item3 = false;
  bool item4 = false;

  // tabbar on/of
  bool modelSelected = false;
  bool SelectedModelContainer = false;
  bool urgent = false;

  void urgentColor(text) {
    final now = DateTime.now().day;
    final selectedDayS = text.substring(0, 2);
    int selectedDay = int.parse(selectedDayS);
    int urgentDay = selectedDay - now;
    if (urgentDay < 6) {
      urgent = true;
    } else {
      urgent = false;
    }
    notifyListeners();
  }

  void selectedModelContainerActive() {
    SelectedModelContainer = !SelectedModelContainer;
    notifyListeners();
  }

  void bottomsheetOpen() {
    bottomsheetIsOpened = !bottomsheetIsOpened;
    notifyListeners();
  }

  void modelSelectedActive() {
    modelSelected = !modelSelected;
    notifyListeners();
  }

  void uniqeResult(String name, var value) {
    result.any((widget) {
      if (widget is Container) {
        Container containerWidget = widget;
        if (containerWidget.child is TabBarItem) {
          TabBarItem tabBarItemWidget = containerWidget.child as TabBarItem;
          if (tabBarItemWidget.text == name) {
            resultIndex = result.indexOf(containerWidget);
            resultUniqe = true;
          }
        }
      }
      return false;
    });
    if (resultUniqe) {
      result.removeAt(resultIndex);
      resultUniqe = false;
    }
    if (value != 0) {
      result.add(
        Container(
          width: double.infinity,
          child: TabBarItem(
            active: true,
            text: name,
            value: value,
          ),
        ),
      );
    }
    DataCouter(value, name);
  }

  void DataCouter(data, name) {
    map1.forEach((key, value) {
      if (key == name) {
        map1[key] = data;
        map1[key] != 0 ? map2[key] = data : map2[key] = 0;
      }
    });
    notifyListeners();
  }

  void deactivateAllSuit() {
    item1 = false;
    item2 = false;
    item3 = false;
    item4 = false;
    activedAllTabbar = false;
    notifyListeners();
  }

  void OnlyInfoActive(int TabbarItem) {
    tabbarIndex = TabbarItem;
    if (TabbarItem != 1) {
      activateTabbarItem();
    }
  }

  void activateTabbarItem() {
    deactivateAllSuit();
    activedAllTabbar = true;
    notifyListeners();
  }

  void activateAllSuit() {
    item1 = true;
    item2 = true;
    item3 = true;
    item4 = true;
    activedAllTabbar = false;

    notifyListeners();
  }

  void activateSuit(i) {
    notifyListeners();
  }
}
