import 'package:flutter/material.dart';

class DropDownProvider extends ChangeNotifier {
  String selectedLocation = 'Flial Ünvani';
  String measureSelector = 'Ölçü götürən';
  String selectedLecale = 'Lekal';
  String selectedSize = 'Ölçü';

  String selectedCity = 'Şəhər';

  String selectedTime = 'Tip';

  List<String> locationList = [
    'Flial Unvani 1',
    'Flial Unvani 2',
    'Flial Unvani 3',
    'Flial Unvani 4'
  ];

  List<String> cityList = ['Bakı', 'Moskova'];

  List<String> selectedTimeList = [
    'kostyum',
    'pencək',
    'şalvar',
    'köynək',
    'jilet',
    'palto',
  ];

  List<String> measureSelectorList = [
    'Option 2',
    'Option 3',
    'Option 4',
  ];
  List<String> lecaleList = ['Z-42', 'Z-44', 'Z-46'];
  List<String> sizeList = ['54', '56', '58'];

  setSelectedLocation(String newValue) {
    selectedLocation = newValue;
    notifyListeners();
  }

  setSelectedCity(String newValue) {
    selectedCity = newValue;
    notifyListeners();
  }

  setSelectedTime(String newValue) {
    selectedTime = newValue;
    notifyListeners();
  }

  setSelectedMeasureSelector(String newValue) {
    measureSelector = newValue;
    notifyListeners();
  }

  setSelectedLecale(String newValue) {
    selectedLecale = newValue;
    notifyListeners();
  }

  setSelectedSize(String newValue) {
    selectedSize = newValue;
    notifyListeners();
  }
}
