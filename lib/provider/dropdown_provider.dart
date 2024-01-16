import 'package:flutter/material.dart';

class DropDownProvider extends ChangeNotifier{
 String   selectedLocation='Option 1';

  String selectedCity='City 1';

    

  List<String> locationList = ['Option 1', 'Option 2', 'Option 3', 'Option 4']; 

  List<String> cityList=['City 1', 'City 2', 'City 3', 'City 4'];

 
 setSelectedLocation(String newValue){
  selectedLocation=newValue; 
  notifyListeners();
 }

 setSelectedCity(String newValue){
  selectedCity=newValue; 
  notifyListeners();
 }

}