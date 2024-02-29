import 'package:emiland/provider/dropdown_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../provider/suit_data_provider.dart';
import '../../../components/custom_textfield.dart';
import '../../../components/dropdown/dropdown.dart';
import 'header.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

var maskFormatter = new MaskTextInputFormatter(
    mask: '## ### ## ##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});
  @override
  Widget build(BuildContext context) {
    var dropDownProvider = Provider.of<DropDownProvider>(context);
    return Column(
      children: [
        SizedBox(
          height: 70.h,
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
              width: 30.w,
            ),
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
              hintText: 'Təhvil',
            )),
          ],
        ),
        SizedBox(
          height: 22.w,
        ),
        CustomTextField(
          firstCapitalwords: TextCapitalization.words,
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
            // Expanded(
            //   flex: 68,
            //   child: CustomTextField(hintText: 'Əlaqə Nömrəsi'),
            // ),
            Expanded(
              flex: 68,
              child: TextField(
                inputFormatters: [maskFormatter],
                textAlign: TextAlign.left,
                style:
                    TextStyle(color: const Color(0xFF2D2D2C), fontSize: 33.sp),
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 0.2, color: Color(0xffDDDDDD))),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 0.2, color: Colors.black)),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(width: 0.2, color: Colors.black)),
                  hintText: 'Əlaqə Nömrəsi',
                ),
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
          ],
        ),
        SizedBox(
          height: 20.h,
        )
      ],
    );
  }
}
