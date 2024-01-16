import 'dart:developer';

import 'package:emiland/provider/checkbox_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../components/custom_textfield.dart';
import '../../lekals/tab_bar_item.dart';
import 'header.dart';

const List<String> list = <String>['Flial unvanı', 'Two', 'Three', 'Four'];

class StyleSection extends StatelessWidget {
  const StyleSection({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<CheckboxProvider>(context);
    return Column(
      children: [
        SizedBox(
          height: 42.h,
        ),
        // info divider
        Header(title: '2.Uslub'),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.centerRight,
              children: [
                TabBarItem(
                  value: 0,
                  active: true,
                  text: 'Kəsik',
                ),
                Row(
                  children: [
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                      ),
                    ),
                    Checkbox(
                  activeColor: const Color(0XFF6CE990),
                       checkColor: Colors.black,
                      isError: true,
                      tristate: true,
                      value: provider.isSelected1,
                      onChanged: (bool?  value){
                        provider.setIsSelected1(value ?? false);
                      
                        log('kesik 1 deyeri ${provider.isSelected1}');
                     
                      },
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                      ),
                    ),
                    Checkbox(
                      activeColor:Color(0XFF6CE990),
                      checkColor: Colors.black,
                      isError: true,
                      tristate: true,
                      value: provider.isSelected2,
                      onChanged: (bool ? value){
                         provider.setIsSelected2(value?? false);
              
                      log('kesik 2 deyeri ${provider.isSelected2}');
                      },
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                TabBarItem(
                  value: 0,
                  active: true,
                  text: 'Bort',
                ),
                Row(
                  children: [
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.white,
                      isError: true,
                      tristate: true,
                      value: false,
                      onChanged: null,
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.white,
                      isError: true,
                      tristate: true,
                      value: false,
                      onChanged: null,
                    ),
                  ],
                ),
              ],
            ),
          ],
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
          height: 20.h,
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
          height: 20.h,
        ),
        Row(
          children: [
            DropdownMenu<String>(
              width: 456.w,
              textStyle: TextStyle(color: Colors.black, fontSize: 28.sp),
              initialSelection: list.first,
              onSelected: (String? value) {},
              dropdownMenuEntries:
                  list.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
            SizedBox(
              width: 22.w,
            ),
            Expanded(child: CustomTextField()),
          ],
        ),
      ],
    );
  }
}
