import 'package:emiland/provider/dropdown_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../components/custom_textfield.dart';
import 'header.dart';

const List<String> list = <String>['Flial unvanı', 'Two', 'Three', 'Four'];

class InfoSection extends StatelessWidget {
  InfoSection({super.key});
  String dropdownValue = list.first;
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
              textStyle: TextStyle(color: Colors.black, fontSize: 28.sp),
              width: 456.w,
              initialSelection: dropDownProvider.selectedLocation,
              onSelected: (String? value) {
                if (value != null) {
                  dropDownProvider.setSelectedLocation(value);
                  print(dropDownProvider.selectedLocation);
                }
              },
              dropdownMenuEntries: dropDownProvider.locationList
                  .map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
            SizedBox(
              width: 22.w,
            ),
            DropdownMenu<String>(
              textStyle: TextStyle(color: Colors.black, fontSize: 28.sp),
              width: 456.w,
              initialSelection: dropDownProvider.selectedCity,
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
            Expanded(child: CustomTextField()),
            SizedBox(
              width: 22.w,
            ),
            Expanded(child: CustomTextField()),
          ],
        ),
        SizedBox(
          height: 22.w,
        ),
        CustomTextField(
          center: true,
        ),
        SizedBox(
          height: 22.w,
        ),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: CustomTextField(),
            ),
            SizedBox(
              width: 22.w,
            ),
            Expanded(
              flex: 7,
              child: CustomTextField(),
            ),
          ],
        ),
        SizedBox(
          height: 22.w,
        ),
        Row(
          children: [
            DropdownMenu<String>(
              initialSelection: list.first,
              textStyle: TextStyle(color: Colors.black, fontSize: 28.sp),
              onSelected: (String? value) {},
              dropdownMenuEntries:
                  list.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
            SizedBox(
              width: 22.w,
            ),
            Expanded(
              flex: 7,
              child: CustomTextField(),
            ),
          ],
        ),
      ],
    );
  }
}
