import 'package:flutter/material.dart';

class DropDownProvider extends ChangeNotifier {
  String selectedLocation = 'Flial Ünvani';
  String measureSelector = 'Ölçü götürən';
  String selectedLecale = 'Lekal';

  String selectedCity = 'Şəhər';

  String selectedTime = 'Təcili';

  List<String> locationList = [
    'Flial Unvani',
    'Flial Unvani 1',
    'Flial Unvani 2',
    'Flial Unvani 3'
  ];

  List<String> cityList = ['Şəhər', 'Unvan 1', 'Unvan 2', 'Unvan 3'];

  List<String> selectedTimeList = [
    'Təcili',
    ' 1 gun',
    '2 gun',
    '3 gun',
    '4 gun',
    '5 gun',
    '6 gun',
    'Təcili deyil'
  ];

  List<String> measureSelectorList = [
    'Ölçü götürən',
    'Option 2',
    'Option 3',
    'Option 4'
  ];
  List<String> lecaleList = ['Lekal', 'Option 2', 'Option 3', 'Option 4'];

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
}
