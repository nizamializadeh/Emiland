import 'package:flutter/material.dart';

class CheckboxProvider extends ChangeNotifier {
  bool isSelected1 = false;
  bool isSelected2 = true;
  bool isBortSelected1 = false;
  bool isBortSelected2 = false;
  bool isPocketSelected1 = false;
  bool isPocketSelected2 = false;
  bool isButtonSelected1 = false;
  bool isButtonSelected2 = false;
  bool isButtonSelected3 = false;
  void setIsSelected1(bool newValue) {
    isSelected1 = newValue;
    isSelected2 = false;
    notifyListeners();
  }

  void setIsSelected2(bool newValue) {
    isSelected2 = newValue;
    isSelected1 = false;

    notifyListeners();
  }

  void setIsBortSelected1(bool newValue) {
    isBortSelected1 = newValue;
    isBortSelected2 = false;
    notifyListeners();
  }

  void setIsBortSelected2(bool newValue) {
    isBortSelected2 = newValue;
    isBortSelected1 = false;

    notifyListeners();
  }

  void setIsPocketSelected1(bool newValue) {
    isPocketSelected1 = newValue;
    isPocketSelected2 = false;
    notifyListeners();
  }

  void setIsPocketSelected2(bool newValue) {
    isPocketSelected2 = newValue;
    isPocketSelected1 = false;
    notifyListeners();
  }

  void setIsButtonSelected1(bool newValue) {
    isButtonSelected1 = newValue;
    isButtonSelected2 = false;
    isButtonSelected3 = false;
    notifyListeners();
  }

  void setIsButtonSelected2(bool newValue) {
    isButtonSelected2 = newValue;
    isButtonSelected1 = false;
    isButtonSelected3 = false;

    notifyListeners();
  }

  void setIsButtonSelected3(bool newValue) {
    isButtonSelected3 = newValue;
    isButtonSelected2 = false;
    isButtonSelected1 = false;
    notifyListeners();
  }
}
