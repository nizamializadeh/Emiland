
import 'dart:developer'; 
 
import 'package:emiland/presentation/constants/app_colors.dart'; 
import 'package:emiland/provider/checkbox_provider.dart'; 
import 'package:emiland/provider/dropdown_provider.dart'; 
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
    var provider = Provider.of<CheckboxProvider>(context); 
    var dropdownProvider = Provider.of<DropDownProvider>(context); 
    return Column( 
      children: [ 
        SizedBox( 
          height: 42.h, 
        ), 
        // info divider 
        Header(title: '2.Uslub'), 
        SizedBox( 
          height: 18.h, 
        ), 
        Row( 
          children: [ 
            const Expanded( 
              child: CustContainer(text: 'Model'), 
            ), 
            SizedBox( 
              width: 22.w, 
            ), 
            const Expanded( 
              child: CustContainer(text: 'Parca'), 
            ), 
          ], 
        ), 
        SizedBox( 
          height: 18.h, 
        ), 
        Row( 
          children: [ 
            DropdownMenu<String>( 
              width: 458.w, 
              textStyle: TextStyle(color: AppColors.grey, fontSize: 28.sp), 
              hintText: dropdownProvider.selectedLecale, 
              onSelected: (String? value) { 
                if (value != null) { 
                  dropdownProvider.setSelectedLecale(value); 
                } 
              }, 
              dropdownMenuEntries: dropdownProvider.lecaleList 
                  .map<DropdownMenuEntry<String>>((String value) { 
                return DropdownMenuEntry<String>(value: value, label: value); 
              }).toList(), 
            ), 
            SizedBox( 
              width: 22.w, 
            ), 
            Expanded( 
                child: CustomTextField( 
              hintText: 'ÖIçü', 
            )), 
          ], 
        ), 
        SizedBox(height: 18.h), 
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [ 
            Stack( 
              alignment: Alignment.centerRight, 
              children: [ 
                const TabBarItem( 
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
                    CustChecbox( 
                      value: provider.isBortSelected1, 
                      onChanged: (value) { 
                        provider.setIsBortSelected1(value ?? false); 
                        log('bort 1 ${provider.isBortSelected1}'); 
                      }, 
                    ), 
                    Text( 
                      '2', 
                      style: TextStyle( 
                        fontSize: 30.sp, 
                        color: Colors.black, 
                      ), 
                    ), 
                    CustChecbox( 
                      value: provider.isBortSelected2, 
                      onChanged: (value) { 
                        provider.setIsBortSelected2(value ?? false); 
                        log('bort 2 ${provider.isBortSelected2}'); 
                      }, 
                    ), 
                  ], 
                ), 
              ], 
            ), 
            Stack( 
              alignment: Alignment.centerRight, 
              children: [ 
                const TabBarItem( 
                  value: 0,


active:


true, 
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
                    CustChecbox( 
                      value: provider.isSelected1, 
                      onChanged: (value) { 
                        provider.setIsSelected1(value ?? false); 
                        log('kesik 1  ${provider.isPocketSelected1}'); 
                      }, 
                    ), 
                    Text( 
                      '2', 
                      style: TextStyle( 
                        fontSize: 30.sp, 
                        color: Colors.black, 
                      ), 
                    ), 
                    CustChecbox( 
                      value: provider.isSelected2, 
                      onChanged: (value) { 
                        provider.setIsSelected2(value ?? false); 
                        log('kesik 2 ${provider.isPocketSelected2}'); 
                      }, 
                    ), 
                  ], 
                ), 
              ], 
            ), 
          ], 
        ), 
 
        // SizedBox( 
        //   height: 20.h, 
        // ), 
 
        //! cib and Duyme 
        SizedBox(height: 18.h), 
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [ 
            Stack( 
              alignment: Alignment.centerRight, 
              children: [ 
                const TabBarItem( 
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
                    CustChecbox( 
                      value: provider.isPocketSelected1, 
                      onChanged: (value) { 
                        provider.setIsPocketSelected1(value ?? false); 
                        log('secilen cib 1 ${provider.isPocketSelected2}'); 
                      }, 
                    ), 
                    Text( 
                      '2', 
                      style: TextStyle( 
                        fontSize: 30.sp, 
                        color: Colors.black, 
                      ), 
                    ), 
                    CustChecbox( 
                      value: provider.isPocketSelected2, 
                      onChanged: (value) { 
                        provider.setIsPocketSelected2(value ?? false); 
                        log('secilen cib 2 ${provider.isPocketSelected2}'); 
                      }, 
                    ), 
                  ], 
                ), 
              ], 
            ), 
            Stack( 
              alignment: Alignment.centerRight, 
              children: [ 
                const TabBarItem( 
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
                    CustChecbox( 
                      value: provider.isButtonSelected1, 
                      onChanged: (value) { 
                        provider.setIsButtonSelected1(value ?? false); 
                        log('secilen duyme 1 ${provider.isButtonSelected2}'); 
                      }, 
                    ), 
                    Text( 
                      '2', 
                      style: TextStyle( 
                        fontSize: 30.sp, 
                        color: Colors.black, 
                      ), 
                    ), 
                    CustChecbox( 
                      value: provider.isButtonSelected2, 
                      onChanged: (value) { 
                        provider.setIsButtonSelected2(value ?? false); 
                        log('secilen duyme 2 ${provider.isButtonSelected2}'); 
                      }, 
                    ), 
                    Text( 
                      '3', 
                      style: TextStyle( 
                        fontSize: 30.sp, 
                        color: Colors.black, 
                      ), 
                    ), 
                    CustChecbox( 
                      value: provider.isButtonSelected3, 
                      onChanged: (value) { 
                        provider.setIsButtonSelected3(value ?? false); 
                        log('secilen duyme 3 ${provider.isButtonSelected3}'); 
                      }, 
                    ), 
                  ], 
                ), 
              ], 
            ), 
          ], 
        ), 
        SizedBox( 
          height: 15.h, 
        ), 
        Row( 
          children: [ 
            const Expanded( 
              child: CustContainer(text: 'Düymə'), 
            ), 
            SizedBox( 
              width: 22.w, 
            ), 
            const Expanded( 
              child: CustContainer(text: 'Astar'), 
            ), 
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
      activeColor: const Color(0XFF6CE990), 
      checkColor: Colors.black, 
      isError: true, 
      tristate: true, 
      value: value, 
      onChanged: onChanged, 
    ); 
  } 
} 
 
class CustContainer extends StatelessWidget { 
  const CustContainer({ 
    required this.text, 
    super.key, 
  }); 
 
  final String text; 
  @override 
  Widget build(BuildContext context) { 
    return Container( 
      alignment: Alignment.centerLeft, 
      height: 48, 
      decoration: BoxDecoration( 
          border: Border.all(color: const Color(0xffDDDDDD), width: 2.w), 
          borderRadius: BorderRadius.all(Radius.circular(8.r))), 
      child: Padding( 
        padding: EdgeInsets.only(left: 15.w), 
        child: Text( 
          text, 
          style: TextStyle(fontSize: 26.sp, color: AppColors.grey), 
        ), 
      ), 
    ); 
  } 
}
