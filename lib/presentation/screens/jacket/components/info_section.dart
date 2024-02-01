import 'package:emiland/provider/dropdown_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../provider/suit_data_provider.dart';
import '../../../components/custom_textfield.dart';
import '../../../components/dropdown/dropdown.dart';
import 'header.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});
  @override
  Widget build(BuildContext context) {
    var dropDownProvider = Provider.of<DropDownProvider>(context);
    return Column(
      children: [
        SizedBox(
          height: 42.h,
        ),
// info divider
        Header(
          title: '1.İnfo',
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            DropdownMenu<String>(
              inputDecorationTheme: const InputDecorationTheme(
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 0.3, color: Color(0xffDDDDDD))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.3, color: Colors.black)),
              ),
              textStyle:
                  TextStyle(color: const Color(0xff707070), fontSize: 33.sp),
              width: 456.w,
// initialSelection: dropDownProvider.selectedLocation,
              hintText: dropDownProvider.selectedLocation,
              onSelected: (String? value) {
                if (value != null) {
                  dropDownProvider.setSelectedLocation(value);
                  print(dropDownProvider.selectedLocation);
                }
              },
              dropdownMenuEntries: dropDownProvider.locationList
                  .map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(
                  value: value,
                  label: value,
                  labelWidget: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                  style: MenuItemButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              width: 22.w,
            ),
            DropdownMenu<String>(
              inputDecorationTheme: const InputDecorationTheme(
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 0.3, color: Color(0xffDDDDDD))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.3, color: Colors.black)),
              ),
              textStyle:
                  TextStyle(color: const Color(0xff707070), fontSize: 33.sp),
              width: 456.w,
              initialSelection: dropDownProvider.selectedCity,
              hintText: dropDownProvider.selectedLocation,
              onSelected: (String? value) {
                if (value != null) {
                  dropDownProvider.setSelectedCity(value);
                  print(dropDownProvider.selectedCity);
                }
              },
              dropdownMenuEntries: dropDownProvider.cityList
                  .map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
          ],
        ),

        SizedBox(
          height: 22.w,
        ),
        Row(
          children: [
            Expanded(
                child: CustomTextField(
              hintText: 'Sifaris',
            )),
            SizedBox(
              width: 22.w,
            ),
            Expanded(
                child: CustomTextField(
              hintText: 'Tehvil',
            )),
          ],
        ),
        SizedBox(
          height: 22.w,
        ),
        CustomTextField(
          center: true,
          hintText: 'Ad / Soyad',
        ),
        SizedBox(
          height: 22.w,
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: CustomTextField(hintText: 'Qeyd'),
            ),
            SizedBox(
              width: 22.w,
            ),
            Expanded(
              flex: 7,
              child: CustomTextField(hintText: 'Elaqe Nomresi'),
            ),
          ],
        ),
        SizedBox(
          height: 22.w,
        ),
        Row(
          children: [
            DropdownMenu<String>(
              inputDecorationTheme: const InputDecorationTheme(
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 0.3, color: Color(0xffDDDDDD))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.3, color: Colors.black)),
              ),
              hintText: dropDownProvider.selectedTime,
              textStyle:
                  TextStyle(color: const Color(0xff707070), fontSize: 33.sp),
              onSelected: (value) {
                if (value != null) {
                  dropDownProvider.setSelectedTime(value);
                }
              },
              dropdownMenuEntries: dropDownProvider.selectedTimeList
                  .map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
            SizedBox(
              width: 22.w,
            ),
            DropdownMenu<String>(
              inputDecorationTheme: const InputDecorationTheme(
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 0.3, color: Color(0xffDDDDDD))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.3, color: Colors.black)),
              ),
              textStyle:
                  TextStyle(color: const Color(0xff707070), fontSize: 33.sp),
              width: 628.w,
// initialSelection: dropDownProvider.measureSelector,

              hintText: dropDownProvider.measureSelector,
              onSelected: (String? value) {
                if (value != null) {
                  dropDownProvider.setSelectedMeasureSelector(value);
                  print(dropDownProvider.selectedCity);
                }
              },
              dropdownMenuEntries: dropDownProvider.measureSelectorList
                  .map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}
