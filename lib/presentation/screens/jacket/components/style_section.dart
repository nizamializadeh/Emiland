import 'dart:developer';

import 'package:emiland/presentation/constants/app_colors.dart';
import 'package:emiland/provider/checkbox_provider.dart';
import 'package:emiland/provider/dropdown_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../provider/suit_data_provider.dart';
import '../../../components/custom_textfield.dart';
import '../../lekals/tab_bar_item.dart';
import 'header.dart';

const List<String> list = <String>['Flial unvanı', 'Two', 'Three', 'Four'];

class StyleSection extends StatelessWidget {
  const StyleSection({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CheckboxProvider>(context);
    var dropDownProvider = Provider.of<DropDownProvider>(context);
    return Column(
      children: [
        SizedBox(
          height: 42.h,
        ),
// info divider
        Header(title: '2.Uslub'),
        SizedBox(
          height: 24.h,
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Provider.of<SuitDataProvider>(context, listen: false)
                      .modelSelectedActive();
                },
                child: CustContainer(text: 'Model'),
              ),
            ),
            SizedBox(
              width: 22.w,
            ),
            Expanded(
              child: CustContainer(text: 'Parca'),
            ),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Row(
          children: [
            Expanded(
              child: DropdownMenu<String>(
                menuStyle: MenuStyle(
                  elevation: MaterialStateProperty.resolveWith((states) {
                    return 0; //your desired selected background color
                  }),
                ),
                inputDecorationTheme: const InputDecorationTheme(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 0.3, color: Color(0xffDDDDDD))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.3, color: Colors.black)),
                ),
                textStyle:
                    TextStyle(color: const Color(0xff707070), fontSize: 33.sp),
                width: 470.w,
                hintText: dropDownProvider.selectedLecale,
                onSelected: (String? value) {
                  if (value != null) {
                    dropDownProvider.setSelectedLecale(value);
                  }
                },
                dropdownMenuEntries: dropDownProvider.lecaleList
                    .map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry<String>(
                    value: value,
                    label: value,
                    labelWidget: Container(
                      width: double.infinity,
                      height: 110.h,
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 0.1, color: Color(0xFF595959)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 38.h, horizontal: 24.w),
                        child: Text(
                          value,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        return Colors
                            .white; //your desired selected background color
                      }),
                      textStyle: MaterialStateTextStyle.resolveWith(
                        (states) => TextStyle(
                          fontSize: 28.sp,
                          color: Color(0xFF2D2D2C),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              width: 22.w,
            ),
            SizedBox(
              width: 470.w,
              child: CustomTextField(
                hintText: 'ÖIçü',
              ),
            )
          ],
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.centerRight,
              children: [
                const TabBarItem(
                  width: 471,
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
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: CustChecbox(
                        value: provider.isBortSelected1,
                        onChanged: (value) {
                          provider.setIsBortSelected1(value ?? false);

                          Provider.of<SuitDataProvider>(context, listen: false)
                              .result
                              .add(
                                Container(
                                  width: double.infinity,
                                  child: TabBarItem(
                                    text: "Bort",
                                    value: 1,
                                  ),
                                ),
                              );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: CustChecbox(
                        value: provider.isBortSelected2,
                        onChanged: (value) {
                          provider.setIsBortSelected2(value ?? false);
                          Provider.of<SuitDataProvider>(context, listen: false)
                              .result
                              .add(
                                Container(
                                  width: double.infinity,
                                  child: TabBarItem(
                                    text: "Bort",
                                    value: 2,
                                  ),
                                ),
                              );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                const TabBarItem(
                  width: 471,
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
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: CustChecbox(
                        value: provider.isSelected1,
                        onChanged: (value) {
                          provider.setIsSelected1(value ?? false);
                          Provider.of<SuitDataProvider>(context, listen: false)
                              .result
                              .add(
                                Container(
                                  width: double.infinity,
                                  child: TabBarItem(
                                    text: "Kəsik",
                                    value: 1,
                                  ),
                                ),
                              );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: CustChecbox(
                        value: provider.isSelected2,
                        onChanged: (value) {
                          provider.setIsSelected2(value ?? false);
                          Provider.of<SuitDataProvider>(context, listen: false)
                              .result
                              .add(
                                Container(
                                  width: double.infinity,
                                  child: TabBarItem(
                                    text: "Kəsik",
                                    value: 2,
                                  ),
                                ),
                              );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),

//! cib and Duyme
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  const TabBarItem(
                    width: 471,
                    value: 0,
                    active: true,
                    text: 'Cib',
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
                      SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: CustChecbox(
                          value: provider.isPocketSelected1,
                          onChanged: (value) {
                            provider.setIsPocketSelected1(value ?? false);
                            Provider.of<SuitDataProvider>(context,
                                    listen: false)
                                .result
                                .add(
                                  Container(
                                    width: double.infinity,
                                    child: TabBarItem(
                                      text: "Cib",
                                      value: 1,
                                    ),
                                  ),
                                );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: CustChecbox(
                          value: provider.isPocketSelected2,
                          onChanged: (value) {
                            provider.setIsPocketSelected2(value ?? false);
                            Provider.of<SuitDataProvider>(context,
                                    listen: false)
                                .result
                                .add(
                                  Container(
                                    width: double.infinity,
                                    child: TabBarItem(
                                      text: "Cib",
                                      value: 2,
                                    ),
                                  ),
                                );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  TabBarItem(
                    width: 471,
                    value: 0,
                    active: true,
                    text: 'Düymə',
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
                      SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: CustChecbox(
                          value: provider.isButtonSelected1,
                          onChanged: (value) {
                            provider.setIsButtonSelected1(value ?? false);
                            Provider.of<SuitDataProvider>(context,
                                    listen: false)
                                .result
                                .add(
                                  Container(
                                    width: double.infinity,
                                    child: TabBarItem(
                                      text: "Düymə",
                                      value: 1,
                                    ),
                                  ),
                                );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: CustChecbox(
                          value: provider.isButtonSelected2,
                          onChanged: (value) {
                            provider.setIsButtonSelected2(value ?? false);
                            Provider.of<SuitDataProvider>(context,
                                    listen: false)
                                .result
                                .add(
                                  Container(
                                    width: double.infinity,
                                    child: TabBarItem(
                                      text: "Düymə",
                                      value: 2,
                                    ),
                                  ),
                                );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 24.0,
                        width: 24.0,
                        child: CustChecbox(
                          value: provider.isButtonSelected3,
                          onChanged: (value) {
                            provider.setIsButtonSelected3(value ?? false);
                            Provider.of<SuitDataProvider>(context,
                                    listen: false)
                                .result
                                .add(
                                  Container(
                                    width: double.infinity,
                                    child: TabBarItem(
                                      text: "Düymə",
                                      value: 3,
                                    ),
                                  ),
                                );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),

        SizedBox(
          height: 15.h,
        ),
        Row(
          children: [
            Expanded(
              child: CustContainer(text: 'Düymə'),
            ),
            // SizedBox(
            //   width: 22.w,
            // ),
            // Expanded(
            //   child: CustContainer(text: 'Astar'),
            // ),
          ],
        ),
      ],
    );
  }
}

class CustChecbox extends StatelessWidget {
  const CustChecbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final Function(bool?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      side: MaterialStateBorderSide.resolveWith(
        (states) => BorderSide(
            width: 2.0, color: value ? Color(0XFF6CE990) : Color(0XFF707070)),
      ),
      activeColor: Color(0XFF6CE990),
      checkColor: Colors.black,
      isError: true,
      tristate: true,
      value: value,
      onChanged: onChanged,
    );
  }
}

class CustContainer extends StatelessWidget {
  CustContainer({
    required this.text,
    super.key,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 456.w,
      alignment: Alignment.centerLeft,
      height: 125.h,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffDDDDDD), width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(8.r))),
      child: Padding(
        padding: EdgeInsets.only(left: 15.w),
        child: Text(
          text,
          style: TextStyle(fontSize: 33.sp, color: AppColors.grey),
        ),
      ),
    );
  }
}
