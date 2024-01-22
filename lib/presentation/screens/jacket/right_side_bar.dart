import 'dart:math';

import 'package:emiland/presentation/screens/jacket/components/style_section.dart';
import 'package:emiland/presentation/screens/lekals/tab_bar_item.dart';
import 'package:emiland/provider/Tabbar_provider.dart';
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

class _JacketRightSideBarState extends State<JacketRightSideBar>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      // length: tabbarProvider.tabLength.length + 3,
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: false);
    SuitDataProvider suitInstanceTrue =
        Provider.of<SuitDataProvider>(context, listen: true);
    TabbarProvider tabbarProvider =
        Provider.of<TabbarProvider>(context, listen: true);

    // final _tabController = TabController(
    //     length: tabbarProvider.tabLength.length + 3,
    //     vsync: this,
    //     initialIndex: tabbarProvider.tabbarIndex);

    // @override
    // void dispose() {
    //   _tabController!.dispose();
    //   super.dispose();
    // }

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
                      controller: _tabController,
                      indicatorColor: Colors.black,
                      tabs: [
                        // if (suitInstance.item1)
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

                        if (tabbarProvider.tabLength.contains('z'))
                          Tab(
                            child: Text(
                              'z',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28.sp),
                            ),
                          ),
                        if (tabbarProvider.tabLength.contains('y'))
                          Tab(
                            child: Text(
                              'y',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28.sp),
                            ),
                          ),
                        if (tabbarProvider.tabLength.contains('b'))
                          Tab(
                            child: Text(
                              'b',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28.sp),
                            ),
                          ),
                        if (tabbarProvider.tabLength.contains('x'))
                          Tab(
                            child: Text(
                              'x',
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
                      controller: _tabController,
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
                                : Column(
                                    children: [
                                      InfoSection(),
                                      StyleSection(),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '\$129',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 30.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            CustomBtn(onPressed: () {
                                              _tabController!.index = 1;
                                              print(_tabController);
                                              // if (_tabController != null) {
                                              //   print(_tabController);
                                              //   _tabController!.animateTo(
                                              //       tabbarProvider
                                              //               .tabLength.length +
                                              //           2);
                                              //   print(_tabController);
                                              // }

                                              // tabbarProvider.tabbarIndex =
                                              //     _tabController!.index;
                                            }),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                          ],
                        ),
                        // Tabbar section 2
                        Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                            ),
                            TabBarItem(
                              width: double.infinity,
                              onTap: () {
                                bottomSheet(context, suitInstance, 'Boyun');
                              },
                              value: suitInstanceTrue.map1['Boyun'],
                              active: suitInstanceTrue.item1,
                              text: 'Boyun',
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TabBarItem(
                              width: double.infinity,
                              value: suitInstanceTrue.map1['Qabaq uzunluq']!,
                              onTap: () {
                                bottomSheet(
                                    context, suitInstance, 'Qabaq uzunluq');
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
                                bottomSheet(
                                    context, suitInstance, 'Arxa uzunluq');
                              },
                              value: suitInstanceTrue.map1['Arxa uzunluq'],
                              active: suitInstanceTrue.item4,
                              text: 'Arxa uzunluq',
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TabBarItem(
                              width: double.infinity,
                              value: suitInstanceTrue.map1['Qabaq hissə']!,
                              onTap: () {
                                bottomSheet(
                                    context, suitInstance, 'Qabaq hissə');
                              },
                              active: suitInstanceTrue.item1,
                              text: 'Qabaq hissə',
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TabBarItem(
                              width: double.infinity,
                              onTap: () {
                                bottomSheet(context, suitInstance, 'Çiyin');
                              },
                              value: suitInstanceTrue.map1['Çiyin'],
                              active: suitInstanceTrue.item4,
                              text: 'Çiyin',
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TabBarItem(
                              width: double.infinity,
                              value: suitInstanceTrue.map1['Qol']!,
                              onTap: () {
                                bottomSheet(context, suitInstance, 'Qol');
                              },
                              active: suitInstanceTrue.item1,
                              text: 'Qol',
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TabBarItem(
                              width: double.infinity,
                              value: suitInstanceTrue.map1['Qabaq hissə']!,
                              onTap: () {
                                bottomSheet(
                                    context, suitInstance, 'Qabaq hissə');
                              },
                              active: suitInstanceTrue.item1,
                              text: 'Qabaq hissə',
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
                              text: 'En',
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TabBarItem(
                              width: double.infinity,
                              onTap: () {
                                bottomSheet(
                                    context, suitInstance, 'Çiyin qaldir/ düş');
                              },
                              value: suitInstanceTrue.map1['Çiyin qaldir/ düş'],
                              active: suitInstanceTrue.item4,
                              text: 'Çiyin qaldir/ düş',
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            TabBarItem(
                              width: double.infinity,
                              onTap: () {
                                bottomSheet(
                                    context, suitInstance, 'Boyun aç/doldur');
                              },
                              value: suitInstanceTrue.map1['Boyun aç/doldur'],
                              active: suitInstanceTrue.item4,
                              text: 'Boyun aç/doldur',
                            ),
                            SizedBox(
                              height: 108.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$129',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  CustomBtn(
                                      text: 'Prev',
                                      onPressed: () {
                                        _tabController!.index = 0;
                                      }),
                                  CustomBtn(onPressed: () {
                                    _tabController!.index = 2;
                                  }),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // Tabbar section 4
                        if (tabbarProvider.tabLength.contains('z'))
                          Column(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Colors.yellow,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$129',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    CustomBtn(
                                        text: 'Prev',
                                        onPressed: () {
                                          _tabController!.index = 0;
                                        }),
                                    CustomBtn(onPressed: () {
                                      _tabController!.animateTo(
                                          tabbarProvider.tabLength.length + 1);
                                    }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        // Tabbar section 5
                        if (tabbarProvider.tabLength.contains('y'))
                          Column(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Colors.red,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$129',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    CustomBtn(
                                        text: 'Prev',
                                        onPressed: () {
                                          _tabController!.index = 0;
                                        }),
                                    CustomBtn(onPressed: () {
                                      _tabController!.animateTo(
                                          tabbarProvider.tabLength.length + 1);
                                    }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        // Tabbar section 6
                        if (tabbarProvider.tabLength.contains('b'))
                          Column(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Colors.black,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$129',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    CustomBtn(
                                        text: 'Prev',
                                        onPressed: () {
                                          _tabController!.index = 0;
                                        }),
                                    CustomBtn(onPressed: () {
                                      _tabController!.animateTo(
                                          tabbarProvider.tabLength.length + 1);
                                    }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        // Tabbar section 7
                        if (tabbarProvider.tabLength.contains('x'))
                          Column(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                color: Colors.blue,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$129',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    CustomBtn(
                                        text: 'Prev',
                                        onPressed: () {
                                          _tabController!.index = 0;
                                        }),
                                    CustomBtn(onPressed: () {
                                      _tabController!.animateTo(
                                          tabbarProvider.tabLength.length + 2);
                                    }),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        // Tabbar section 3
                        Column(
                          children: [
                            // SizedBox(
                            //   height: 60.h,
                            // ),
                            // TabBarItem(
                            //   width: double.infinity,
                            //   value: suitInstanceTrue.map1['boyun']!,
                            //   onTap: () {
                            //     bottomSheet(context, suitInstance, 'boyun');
                            //   },
                            //   active: suitInstanceTrue.item1,
                            //   text: 'Ciyin',
                            // ),
                            // SizedBox(
                            //   height: 18.h,
                            // ),
                            // TabBarItem(
                            //   width: double.infinity,
                            //   onTap: () {
                            //     bottomSheet(context, suitInstance, 'en');
                            //   },
                            //   value: suitInstanceTrue.map1['en'],
                            //   active: suitInstanceTrue.item4,
                            //   text: 'Qabaq hisse',
                            // ),
                            // SizedBox(
                            //   height: 18.h,
                            // ),
                            // TabBarItem(
                            //   width: double.infinity,
                            //   value: suitInstanceTrue.map1['boyun']!,
                            //   onTap: () {
                            //     bottomSheet(context, suitInstance, 'boyun');
                            //   },
                            //   active: suitInstanceTrue.item1,
                            //   text: 'Qabaq uzunluq',
                            // ),
                            // SizedBox(
                            //   height: 18.h,
                            // ),
                            // TabBarItem(
                            //   width: double.infinity,
                            //   onTap: () {
                            //     bottomSheet(context, suitInstance, 'en');
                            //   },
                            //   value: suitInstanceTrue.map1['en'],
                            //   active: suitInstanceTrue.item4,
                            //   text: 'Qabaq hisse',
                            // ),

                            Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                width: double.infinity,
                                child: Column(
                                  children: Provider.of<SuitDataProvider>(
                                          context,
                                          listen: true)
                                      .result,
                                )),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$129',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  CustomBtn(
                                      text: 'Prev',
                                      onPressed: () {
                                        _tabController!.index = 1;
                                      }),
                                  CustomBtn(
                                      text: 'Save',
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Trousers()));
                                        print('Function');
                                      }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 30.w),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         '\$129',
            //         style:
            //             TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w500),
            //       ),
            //       CustomBtn(onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //                 builder: (context) => const Trousers()));
            //         print('Function');
            //       }),
            //     ],
            //   ),
            // ),
          ],
        ));
  }
}

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    this.text = 'Next',
    required this.onPressed,
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
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 40.sp),
          ),
          onPressed: onPressed),
    );
  }
}
