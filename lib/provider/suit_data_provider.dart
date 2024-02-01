import 'package:emiland/presentation/screens/lekals/tab_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuitDataProvider extends ChangeNotifier {
  List<Container> result = [];
  bool activedAllTabbar = true;

  Map<String, dynamic> map1 = {
    'Qabaq uzunluq': 0,
    'Arxa uzunluq': 0,
    'Qabaq hissə': 0,
    'Çiyin': 0,
    'Forması art.': 0,
    'Qol': 0,
    'Boyun': 0,
    'en': 0,
    'boyun': 0,
    'vatka': 0,
    'Qol qat': 0,
    'boyun doldurmaq/açmaq': 0,
    'çiyin qaldır/düş': 0,
    'cib artırmaq/azaltmaq': 0,
    'cib sinə artır/azalt': 0,
    'sinə artır/azalt': 0,
    'uzunluq artır/azalt': 0,
    'boyun artırmaq/çıxmaq': 0,
    'qabaq aç / bağla': 0,
    'qabaq artırmaq/azaltmaq': 0,
    'boyun dərinləşdirmək / qaldırmaq': 0,
    'boyundan aşağıya qədər çıx': 0,
    'çiyin artırmaq/çıxartmaq': 0,
    'en çıx/artır': 0,
    'qol dibi sal/qaldır': 0,
    'kürək açmaq': 0,
    'kürək aşağısından çıx': 0,
    'razrez artır/azalt': 0,
    'talya çıx': 0,
    'böyür hissə ağzını aç': 0,
    'böyür hissə yan tərəf artırmaq/azaltmaq': 0,
    'qol dibi qaldır/aşağı sal': 0,
    'dirsək artır/azalt': 0,
    'qolovka artır/azalt': 0,
    'qolun aşağı hissəsi artır/azalt': 0,
    'qol eni artır/azalt': 0,
  };

  Map<String, bool> map2 = {
    'en': false,
    'boyun': false,
  };

  // bool item1 = true;
  // bool item2 = true;
  // bool item3 = true;
  // bool item4 = true;

  bool item1 = false;
  bool item2 = false;
  bool item3 = false;
  bool item4 = false;

  // tabbar on/of
  bool modelSelected = false;
  bool SelectedModelContainer = false;

  void selectedModelContainerActive() {
    SelectedModelContainer = !SelectedModelContainer;
    notifyListeners();
  }

  void modelSelectedActive() {
    modelSelected = !modelSelected;
    notifyListeners();
  }

  void DataCouter(data, name) {
    map1.forEach((key, value) {
      if (key == name) {
        map1[key] = data;
        map1[key] != 0 ? map2[key] = true : map2[key] = false;
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
