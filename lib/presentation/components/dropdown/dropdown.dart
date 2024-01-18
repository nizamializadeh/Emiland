// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class CustDropDownButton extends StatelessWidget {
//   CustDropDownButton({
//     Key? key,
//     required this.dropDownItems,
//     required this.dropDownValue,
//     required this.onChanged,
//     required this.width,
//   }) : super(key: key);

//   String dropDownValue;
//   List<String> dropDownItems;
//   final Function(String? value)? onChanged;
//   double width;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width.w,
//       child: DropdownButtonFormField<String>(
//         hint: Text(dropDownValue),
//         // value: dropDownValue,
//         style: TextStyle(fontSize: 27.sp, color: const Color(0xff707070)), 
//         isExpanded: true,
//         decoration: InputDecoration(
//            fillColor: Colors.transparent, 
           
  
//            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
//            enabledBorder: const OutlineInputBorder(
//             borderSide: BorderSide(width: 0.3, color: Color(0xffDDDDDD))),
//              focusedBorder: const OutlineInputBorder(
//             borderSide: BorderSide(width: 0.3, color: Colors.black)),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(5.0),
            
//           ),
//         ),
       
//         items: dropDownItems.map((String item) {
//           return DropdownMenuItem<String>(
//             value: item,
//             child: Padding(
//               padding: const EdgeInsets.only(top: 4),
//               child: Text(item),
//             ),
//           );
//         }).toList(),
//         onChanged: (value) {
//           if (value != null) {
//             onChanged!(value);
//             // dropDownValue = value;
//             log('dropdown value $dropDownValue');
//           }
//         },
       
//       ),
//     );
//   }
// }