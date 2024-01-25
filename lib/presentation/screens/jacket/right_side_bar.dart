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
  var x;
  @override
  void initState() {
    super.initState();
    x = 1;
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
    final List<TabBarItem> _items = [
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'Boyun');
        },
        value: suitInstanceTrue.map1['Boyun'],
        active: suitInstanceTrue.item1,
        text: 'Boyun',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qabaq uzunluq']!,
        onTap: () {
          bottomSheet(context, suitInstance, 'Qabaq uzunluq');
        },
        active: suitInstanceTrue.item1,
        text: 'Qabaq uzunluq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'Arxa uzunluq');
        },
        value: suitInstanceTrue.map1['Arxa uzunluq'],
        active: suitInstanceTrue.item4,
        text: 'Arxa uzunluq',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qabaq hissə']!,
        onTap: () {
          bottomSheet(context, suitInstance, 'Qabaq hissə');
        },
        active: suitInstanceTrue.item4,
        text: 'Qabaq hissə',
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
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qol']!,
        onTap: () {
          bottomSheet(context, suitInstance, 'Qol');
        },
        active: suitInstanceTrue.item1,
        text: 'Qol',
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
    ];
    if (x == 1) {
      x = 2;
      tabbarProvider.itemList = _items;
      print(tabbarProvider.itemList);
    }

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
                            for (int index = 0;
                                index < _items.length;
                                index += 1)
                              _items[index]

                            // for (int index = 0;
                            //     index < _items.length;
                            //     index += 1)
                            //   _items[index],
                            // _items.removeAt(1),

                            // _items.insert(_items[2]);
                          ],
                        ),
                        // SingleChildScrollView(
                        //   child: Column(
                        //     children: [
                        //       SizedBox(
                        //         height: 60.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         value: suitInstanceTrue.map1['Qabaq uzunluq']!,
                        //         onTap: () {
                        //           bottomSheet(
                        //               context, suitInstance, 'Qabaq uzunluq');
                        //         },
                        //         active: suitInstanceTrue.item1,
                        //         text: 'Qabaq uzunluq',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(
                        //               context, suitInstance, 'Arxa uzunluq');
                        //         },
                        //         value: suitInstanceTrue.map1['Arxa uzunluq'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'Arxa uzunluq',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         value: suitInstanceTrue.map1['Qol']!,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance, 'Qol');
                        //         },
                        //         active: suitInstanceTrue.item1,
                        //         text: 'Qol',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance, 'Çiyin');
                        //         },
                        //         value: suitInstanceTrue.map1['Çiyin'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'Çiyin',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance, 'Boyun');
                        //         },
                        //         value: suitInstanceTrue.map1['Boyun'],
                        //         active: suitInstanceTrue.item1,
                        //         text: 'Boyun',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance, 'en');
                        //         },
                        //         value: suitInstanceTrue.map1['en'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'En',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         value: suitInstanceTrue.map1['vatka']!,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance, 'vatka');
                        //         },
                        //         active: suitInstanceTrue.item1,
                        //         text: 'vatka',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         value: suitInstanceTrue.map1['Qol qat']!,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance, 'Qol qat');
                        //         },
                        //         active: suitInstanceTrue.item1,
                        //         text: 'Qol qat',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         value: suitInstanceTrue.map1['Qabaq hissə']!,
                        //         onTap: () {
                        //           bottomSheet(
                        //               context, suitInstance, 'Qabaq hissə');
                        //         },
                        //         active: suitInstanceTrue.item1,
                        //         text: 'Qabaq hissə',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         value: suitInstanceTrue
                        //             .map1['boyun doldurmaq/açmaq']!,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'boyun doldurmaq/açmaq');
                        //         },
                        //         active: suitInstanceTrue.item1,
                        //         text: 'boyun doldurmaq/açmaq',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         value:
                        //             suitInstanceTrue.map1['çiyin qaldır/düş']!,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'çiyin qaldır/düş');
                        //         },
                        //         active: suitInstanceTrue.item1,
                        //         text: 'çiyin qaldır/düş',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         value: suitInstanceTrue
                        //             .map1['cib artırmaq/azaltmaq']!,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'cib artırmaq/azaltmaq');
                        //         },
                        //         active: suitInstanceTrue.item1,
                        //         text: 'cib artırmaq/azaltmaq',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'cib sinə artır/azalt');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['cib sinə artır/azalt'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'cib sinə artır/azalt',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'sinə artır/azalt');
                        //         },
                        //         value:
                        //             suitInstanceTrue.map1['sinə artır/azalt'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'sinə artır/azalt',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'uzunluq artır/azalt');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['uzunluq artır/azalt'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'uzunluq artır/azalt',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'boyun artırmaq/çıxmaq');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['boyun artırmaq/çıxmaq'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'boyun artırmaq/çıxmaq',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'qabaq aç / bağla');
                        //         },
                        //         value:
                        //             suitInstanceTrue.map1['qabaq aç / bağla'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'qabaq aç / bağla',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'qabaq artırmaq/azaltmaq');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['qabaq artırmaq/azaltmaq'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'qabaq artırmaq/azaltmaq',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'boyun dərinləşdirmək / qaldırmaq');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['boyun dərinləşdirmək / qaldırmaq'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'boyun dərinləşdirmək / qaldırmaq',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'boyundan aşağıya qədər çıx');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['boyundan aşağıya qədər çıx'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'boyundan aşağıya qədər çıx',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'çiyin artırmaq/çıxartmaq');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['çiyin artırmaq/çıxartmaq'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'çiyin artırmaq/çıxartmaq',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(
                        //               context, suitInstance, 'en çıx/artır');
                        //         },
                        //         value: suitInstanceTrue.map1['en çıx/artır'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'en çıx/artır',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'qol dibi sal/qaldır');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['qol dibi sal/qaldır'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'qol dibi sal/qaldır',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(
                        //               context, suitInstance, 'kürək açmaq');
                        //         },
                        //         value: suitInstanceTrue.map1['kürək açmaq'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'kürək açmaq',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'kürək aşağısından çıx');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['kürək aşağısından çıx'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'kürək aşağısından çıx',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'razrez artır/azalt');
                        //         },
                        //         value:
                        //             suitInstanceTrue.map1['razrez artır/azalt'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'razrez artır/azalt',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(
                        //               context, suitInstance, 'talya çıx');
                        //         },
                        //         value: suitInstanceTrue.map1['talya çıx'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'talya çıx',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'böyür hissə ağzını aç');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['böyür hissə ağzını aç'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'böyür hissə ağzını aç',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'böyür hissə yan tərəf artırmaq/azaltmaq');
                        //         },
                        //         value: suitInstanceTrue.map1[
                        //             'böyür hissə yan tərəf artırmaq/azaltmaq'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'böyür hissə yan tərəf artırmaq/azaltmaq',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'qol dibi qaldır/aşağı sal');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['qol dibi qaldır/aşağı sal'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'qol dibi qaldır/aşağı sal',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'dirsək artır/azalt');
                        //         },
                        //         value:
                        //             suitInstanceTrue.map1['dirsək artır/azalt'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'dirsək artır/azalt',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'qolovka artır/azalt');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['qolovka artır/azalt'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'qolovka artır/azalt',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'qolun aşağı hissəsi artır/azalt');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['qolun aşağı hissəsi artır/azalt'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'qolun aşağı hissəsi artır/azalt',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       TabBarItem(
                        //         width: double.infinity,
                        //         onTap: () {
                        //           bottomSheet(context, suitInstance,
                        //               'qol eni artır/azalt');
                        //         },
                        //         value: suitInstanceTrue
                        //             .map1['qol eni artır/azalt'],
                        //         active: suitInstanceTrue.item4,
                        //         text: 'qol eni artır/azalt',
                        //       ),
                        //       SizedBox(
                        //         height: 18.h,
                        //       ),
                        //       Padding(
                        //         padding: EdgeInsets.symmetric(horizontal: 30.w),
                        //         child: Row(
                        //           mainAxisAlignment:
                        //               MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             Text(
                        //               '\$129',
                        //               style: TextStyle(
                        //                   color: Colors.black,
                        //                   fontSize: 30.sp,
                        //                   fontWeight: FontWeight.w500),
                        //             ),
                        //             CustomBtn(
                        //                 text: 'Prev',
                        //                 onPressed: () {
                        //                   _tabController!.index = 0;
                        //                 }),
                        //             CustomBtn(onPressed: () {
                        //               _tabController!.index = 2;
                        //             }),
                        //           ],
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
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
