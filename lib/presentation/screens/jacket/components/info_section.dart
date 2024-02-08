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
            Expanded(
              child: DropdownMenu<String>(
                menuStyle: MenuStyle(
                  // maximumSize: MaterialStateProperty.resolveWith((states) {
                  //   return Size(0, double.infinity);
                  // }),
                  padding: MaterialStateProperty.resolveWith((states) {
                    return EdgeInsets.symmetric(horizontal: 0);
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
                      borderSide: BorderSide(width: 0.3, color: Colors.black)),
                ),
                textStyle:
                    TextStyle(color: const Color(0xff707070), fontSize: 33.sp),
                width: 470.w,
                hintText: dropDownProvider.selectedLocation,
                onSelected: (String? value) {
                  if (value != null) {
                    dropDownProvider.setSelectedLocation(value);
                  }
                },
                dropdownMenuEntries: dropDownProvider.locationList
                    .map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry<String>(
                    value: value,
                    label: value,
                    labelWidget: Container(
                      width: double.infinity,
                      height: 110.h,
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 0.2, color: Color(0xFFDDDDDD)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 38.h, horizontal: 24.w),
                        child: Text(
                          value,
                          style: TextStyle(
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.w500,
                            fontSize: 32.sp,
                            color: Color(0xFF707070),
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
              width: 30.w,
            ),
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
                hintText: dropDownProvider.selectedCity,
                onSelected: (String? value) {
                  if (value != null) {
                    dropDownProvider.setSelectedCity(value);
                  }
                },
                dropdownMenuEntries: dropDownProvider.cityList
                    .map<DropdownMenuEntry<String>>((String value) {
                  return DropdownMenuEntry<String>(
                    value: value,
                    label: value,
                    labelWidget: Container(
                      width: 240.0,
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
              width: 30.w,
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
              flex: 32,
              child: CustomTextField(hintText: 'Qeyd'),
            ),
            SizedBox(
              width: 22.w,
            ),
            Expanded(
              flex: 68,
              child: CustomTextField(hintText: 'Elaqe Nomresi'),
            ),
          ],
        ),
        SizedBox(
          height: 22.w,
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
                hintText: dropDownProvider.selectedTime,
                onSelected: (String? value) {
                  if (value != null) {
                    dropDownProvider.setSelectedTime(value);
                  }
                },
                dropdownMenuEntries: dropDownProvider.selectedTimeList
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
                hintText: dropDownProvider.measureSelector,
                onSelected: (String? value) {
                  if (value != null) {
                    dropDownProvider.setSelectedMeasureSelector(value);
                  }
                },
                dropdownMenuEntries: dropDownProvider.measureSelectorList
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
          ],
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
