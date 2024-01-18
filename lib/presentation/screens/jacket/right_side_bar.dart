import 'package:emiland/presentation/screens/jacket/components/style_section.dart';
import 'package:emiland/presentation/screens/lekals/tab_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../provider/suit_data_provider.dart';
import '../trousers.dart';
import 'components/info_section.dart';
import 'components/jacket_color_container.dart';
import 'components/model.dart';
import '../../components/bottom_sheet/bottom_sheet.dart';

class JacketRightSideBar extends StatefulWidget {
  const JacketRightSideBar({super.key});

  @override
  State<JacketRightSideBar> createState() => _JacketRightSideBarState();
}

class _JacketRightSideBarState extends State<JacketRightSideBar> {

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: false);
    SuitDataProvider suitInstanceTrue =
        Provider.of<SuitDataProvider>(context, listen: true);

    return Container(
        margin: EdgeInsets.only(top: 100.h),
        width: 1005.w,
        child: Column(
          children: [
            Text(
              'Size measurements',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 50.sp,
                  fontWeight: FontWeight.w500),
            ),
            Expanded(
              flex: 9,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    bottom: TabBar(
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            '1.Info/Uslub',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 28.sp),
                          ),
                        ),
                        Tab(
                          child: Text(
                            '2.Ölçü',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 28.sp),
                          ),
                        ),
                        Tab(
                          child: Text(
                            '3.Xülasə',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 28.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  body: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: TabBarView(
                      children: [
                        // Tabbar section 1
                        Column(
                          children: [
                          
                        


                            Provider.of<SuitDataProvider>(context, listen: true)
                                    .modelSelected
                                ? Provider.of<SuitDataProvider>(context,
                                            listen: true)
                                        .SelectedModelContainer
                                    ? const JacketColorContainer()
                                    : const Model()
                                : const Column(
                                    children: [
                                      InfoSection(),
                                      StyleSection(),
                                    ],
                                  ) 
                            
                            
                          ],
                        ),
                        // Tabbar section 2
                        //  Container(
                        //     width: 400,
                        //     height: 600,
                        //   color: Colors.red,
                        //    child: ListView.builder(
                        //     scrollDirection: Axis.vertical,
                        //     itemCount: 8,
                        //     itemBuilder: (context, index) {
                        //        Container(width:  50, height:  50, color: Colors.green,);
                             
                        //    },),
                        //  ),
                         Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                            ),
                            TabBarItem(
                             width: double.infinity,
                              value: suitInstanceTrue.map1['boyun']!,
                              onTap: () {
                                bottomSheet(context, suitInstance, 'boyun');
                              },
                              active: suitInstanceTrue.item1,
                              text: 'Qabaq uzunluq',
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TabBarItem(
                            width: double.infinity,
                              onTap: () {
                                bottomSheet(context, suitInstance, 'en');
                              },
                              value: suitInstanceTrue.map1['en'],
                              active: suitInstanceTrue.item4,
                              text: 'Arxa  hisse',
                            ), 
                            SizedBox(
                              height: 18.h,
                            ),
                             TabBarItem(
                             width: double.infinity,
                              value: suitInstanceTrue.map1['boyun']!,
                              onTap: () {
                                bottomSheet(context, suitInstance, 'boyun');
                              },
                              active: suitInstanceTrue.item1,
                              text: 'Qabaq uzunluq',
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TabBarItem(
                            width: double.infinity,
                              onTap: () {
                                bottomSheet(context, suitInstance, 'en');
                              },
                              value: suitInstanceTrue.map1['en'],
                              active: suitInstanceTrue.item4,
                              text: 'Qabaq hisse',
                            ),
                            // Container(width: 50,height: 50, color: Colors.red,)
                          ],
                        ),

                        // Tabbar section 3
                       Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                            ),
                            TabBarItem(
                             width: double.infinity,
                              value: suitInstanceTrue.map1['boyun']!,
                              onTap: () {
                                bottomSheet(context, suitInstance, 'boyun');
                              },
                              active: suitInstanceTrue.item1,
                              text: 'Ciyin',
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TabBarItem(
                            width: double.infinity,
                              onTap: () {
                                bottomSheet(context, suitInstance, 'en');
                              },
                              value: suitInstanceTrue.map1['en'],
                              active: suitInstanceTrue.item4,
                              text: 'Qabaq hisse',
                            ), 
                            SizedBox(
                              height: 18.h,
                            ),
                             TabBarItem(
                             width: double.infinity,
                              value: suitInstanceTrue.map1['boyun']!,
                              onTap: () {
                                bottomSheet(context, suitInstance, 'boyun');
                              },
                              active: suitInstanceTrue.item1,
                              text: 'Qabaq uzunluq',
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TabBarItem(
                            width: double.infinity,
                              onTap: () {
                                bottomSheet(context, suitInstance, 'en');
                              },
                              value: suitInstanceTrue.map1['en'],
                              active: suitInstanceTrue.item4,
                              text: 'Qabaq hisse',
                            ),
                      
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$129',
                    style:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w500),
                  ),
                  CustomBtn(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const Trousers()));
                    print('Function');
                  }),
                ],
              ),
            ),
          ],
        ));
  }

//   Future<void> bottomSheet(
//       BuildContext context, SuitDataProvider suitInstance) {
//     return showModalBottomSheet<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return StatefulBuilder(
//             builder: (BuildContext context, StateSetter setState) {
//           return Container(
//             height: 200,
//             color: Colors.amber,
//             child: Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     Provider.of<SuitDataProvider>(context, listen: true)
//                         .map1['boyun']
//                         .toString(),
//                     style: TextStyle(color: Colors.black, fontSize: 55.sp),
//                   ),
//                   SizedBox(
//                     width: 50.w,
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.min,
//                     children: <Widget>[
//                       ElevatedButton(
//                         child: const Icon(Icons.add),
//                         onPressed: () {
// // suitInstance.incrementCount();
//                         },
//                       ),
//                       ElevatedButton(
//                         child: const Icon(Icons.remove),
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     width: 50.w,
//                   ),
//                   ElevatedButton(
//                     style:
//                         ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                     child: Text(
//                       'Save',
//                       style: TextStyle(fontSize: 50.sp),
//                     ),
//                     onPressed: () => Navigator.pop(context),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//       },
//     );
//   }
}

class CustomBtn extends StatelessWidget {
  const CustomBtn({ this.text='Save' , required this.onPressed,
    super.key,
  });
  final String text; 
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black),
        child: Text(
          text,
          style: TextStyle(fontSize: 40.sp),
        ),
        onPressed: onPressed
        
      ),
    );
  }
}
