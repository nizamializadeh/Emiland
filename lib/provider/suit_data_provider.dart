import 'package:emiland/presentation/screens/lekals/tab_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuitDataProvider extends ChangeNotifier {
  List<Container> result = [];

  Map<String, dynamic> map1 = {
    'Qabaq uzunluq': 0,
    'Arxa uzunluq': 0,
    'Qabaq hissə': 0,
    'Çiyin': 0,
    'Forması art.': 0,
    'Qol': 0,
    'Boyun': 0,
    'Çiyin qaldir/ düş': 0,
    'Boyun aç/doldur': 0,
    'en': 0,
    'boyun': 0,
  };

  Map<String, bool> map2 = {
    'en': false,
    'boyun': false,
  };

  bool item1 = true;
  bool item2 = true;
  bool item3 = true;
  bool item4 = true;

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
    notifyListeners();
  }

  void activateAllSuit() {
    item1 = true;
    item2 = true;
    item3 = true;
    item4 = true;
    notifyListeners();
  }

  void activateSuit(i) {
    notifyListeners();
  }
}
