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
          height: 70.h,
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
              child: SizedBox(
                width: 470.w,
                child: CustomTextField(
                  hintText: 'Ölçü',
                ),
              ),
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
                // expandedInsets: EdgeInsets.zero,
                menuStyle: MenuStyle(
                  padding: MaterialStateProperty.resolveWith((states) {
                    return EdgeInsets.symmetric(horizontal: 0, vertical: 10);
                  }),
                  elevation: MaterialStateProperty.resolveWith((states) {
                    return 0;
                  }),
                ),
                inputDecorationTheme: const InputDecorationTheme(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 0.3, color: Color(0xffDDDDDD))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.3, color: Colors.red)),
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
                      margin: EdgeInsets.only(left: 10, right: 0),
                      width: double.infinity,
                      height: 110.h,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          5.w,
                          30.h,
                          0.w,
                          0.h,
                        ),
                        child: Text(
                          value,
                          style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 33.sp,
                            color: Color(0xFF707070),
                          ),
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.resolveWith((states) {
                        return RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: BorderSide(
                                color: Color(0xFFDDDDDD), width: 0.3));
                      }),
                      padding: MaterialStateProperty.resolveWith((states) {
                        return EdgeInsets.only(left: 0, right: 0);
                      }),
                      foregroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        return Colors.white;
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
                  checkbox: true,
                  width: 471,
                  value: 0,
                  active: true,
                  text: 'Bort',
                ),
                Row(
                  children: [
                    CustText(
                      text: '1',
                    ),
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: CustChecbox(
                        value: provider.isBortSelected1,
                        onChanged: (value) {
                          provider.setIsBortSelected1(value ?? false);
                          Provider.of<SuitDataProvider>(context, listen: false)
                              .uniqeResult('Bort', 1);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    CustText(
                      text: '2',
                    ),
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: CustChecbox(
                        value: provider.isBortSelected2,
                        onChanged: (value) {
                          provider.setIsBortSelected2(value ?? false);
                          Provider.of<SuitDataProvider>(context, listen: false)
                              .uniqeResult('Bort', 2);
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
                  checkbox: true,
                  width: 471,
                  value: 0,
                  active: true,
                  text: 'Kəsik',
                ),
                Row(
                  children: [
                    CustText(
                      text: '1',
                    ),
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: CustChecbox(
                        value: provider.isSelected1,
                        onChanged: (value) {
                          provider.setIsSelected1(value ?? false);
                          Provider.of<SuitDataProvider>(context, listen: false)
                              .uniqeResult('Kəsik', 1);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    CustText(
                      text: '2',
                    ),
                    SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: CustChecbox(
                        value: provider.isSelected2,
                        onChanged: (value) {
                          provider.setIsSelected2(value ?? false);
                          Provider.of<SuitDataProvider>(context, listen: false)
                              .uniqeResult('Kəsik', 2);
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
                    checkbox: true,
                    width: 471,
                    value: 0,
                    active: true,
                    text: 'Cib',
                  ),
                  Row(
                    children: [
                      CustText(
                        text: '1',
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
                                .uniqeResult('Cib', 1);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustText(
                        text: '2',
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
                                .uniqeResult('Cib', 2);
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
                    checkbox: true,
                    width: 471,
                    value: 0,
                    active: true,
                    text: 'Düymə',
                  ),
                  Row(
                    children: [
                      CustText(
                        text: '1',
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
                                .uniqeResult('Düymə', 1);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustText(
                        text: '2',
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
                                .uniqeResult('Düymə', 2);
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CustText(
                        text: '3',
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
                                .uniqeResult('Düymə', 3);
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
                child: SizedBox(
              width: 470.w,
              child: CustomTextField(
                center: true,
                hintText: 'ÖIçü',
              ),
            )),
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
    return Transform.scale(
      scale: 1.3,
      child: Checkbox(
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(2.0),
        // ),
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(
              width: 1.0, color: value ? Color(0XFF6CE990) : Color(0XFF707070)),
        ),
        activeColor: Color(0XFF6CE990),
        checkColor: Colors.black,
        isError: true,
        tristate: true,
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}

class CustContainer extends StatelessWidget {
  CustContainer({
    required this.text,
    this.align,
    super.key,
  });

  final String text;
  final AlignmentGeometry? align;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 456.w,
      alignment: align == null ? Alignment.centerLeft : align,
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

class CustText extends StatelessWidget {
  const CustText({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35.w,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 33.sp,
            color: Color(0xff707070),
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
