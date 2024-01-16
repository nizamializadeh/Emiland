import 'package:flutter/material.dart'; 
 
class DropDownProvider extends ChangeNotifier{ 
 String  selectedLocation='Flial Ünvani'; 
 String measureSelector='Ölçü götürən'; 
 String selectedLecale='Lekal'; 
 
  String selectedCity='Şəhər'; 
 
  String  selectedTime='Təcili'; 
 
  List<String> locationList = ['Flial Unvani', 'Option 2', 'Option 3', 'Option 4'];  
 
  List<String> cityList=['Şəhər', 'City 2', 'City 3', 'City 4']; 
 
  List<String> selectedTimeList=['Təcili','Option 2', 'Option 3', 'Option 4']; 
 
  List<String>  measureSelectorList=['Ölçü götürən', 'Option 2', 'Option 3', 'Option 4' ]; 
  List<String>  lecaleList=['Lekal', 'Option 2', 'Option 3', 'Option 4']; 
  
 setSelectedLocation(String newValue){ 
  selectedLocation=newValue;  
  notifyListeners(); 
 } 
 
 setSelectedCity(String newValue){ 
  selectedCity=newValue;  
  notifyListeners(); 
 } 
 
 setSelectedTime(String newValue){ 
  selectedTime=newValue; 
    notifyListeners(); 
 } 
 
 setSelectedMeasureSelector(String newValue){ 
  measureSelector= newValue;  
  notifyListeners(); 
 } 
 
 
setSelectedLecale(String newValue){ 
  selectedLecale=newValue; 
    notifyListeners(); 
} 
 
 
}