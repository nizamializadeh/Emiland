// class BottomSheet extends StatelessWidget {
//   const BottomSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomSheet() {
//       showModalBottomSheet<void>(
//         context: context,
//         builder: (BuildContext context) {
//           return StatefulBuilder(
//               builder: (BuildContext context, StateSetter setState) {
//                 return Container(
//                   height: 200,
//                   color: Colors.amber,
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           Provider.of<SuitDataProvider>(context, listen: true)
//                               .boyun
//                               .toString(),
//                           style: TextStyle(color: Colors.black, fontSize: 55.sp),
//                         ),
//                         SizedBox(
//                           width: 50.w,
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           mainAxisSize: MainAxisSize.min,
//                           children: <Widget>[
//                             ElevatedButton(
//                               child: Icon(Icons.add),
//                               onPressed: () {
//                                 suitInstance.inctementCount();
//                               },
//                             ),
//                             ElevatedButton(
//                               child: Icon(Icons.remove),
//                               onPressed: () {
//                                 suitInstance.decrementCount();
//                               },
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 50.w,
//                         ),
//                         ElevatedButton(
//                           style:
//                           ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                           child: Text(
//                             'Save',
//                             style: TextStyle(fontSize: 50.sp),
//                           ),
//                           onPressed: () => Navigator.pop(context),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               });
//         },
//       );
//     };
//   }
// }
