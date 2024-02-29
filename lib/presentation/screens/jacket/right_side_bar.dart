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
    _tabController?.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    if (_tabController != null && _tabController!.indexIsChanging) {
      Provider.of<SuitDataProvider>(context, listen: false)
          .OnlyInfoActive(_tabController!.index);
    }
  }

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(1.0, 0.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.fastEaseInToSlowEaseOut,
  ));
  void _startAnimation() {
    _controller.reset(); // Reset the animation to its initial state
    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: false);
    SuitDataProvider suitInstanceTrue =
        Provider.of<SuitDataProvider>(context, listen: true);
    TabbarProvider tabbarProvider =
        Provider.of<TabbarProvider>(context, listen: true);
    _startAnimation();
    final List<TabBarItem> _items = [
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qabaq uzunluq']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qabaq uzunluq');
        },
        active: suitInstanceTrue.item1,
        text: 'Qabaq uzunluq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Arxa uzunluq');
        },
        value: suitInstanceTrue.map1['Arxa uzunluq'],
        active: suitInstanceTrue.item4,
        text: 'Arxa uzunluq',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qol']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qol');
        },
        active: suitInstanceTrue.item1,
        text: 'Qol',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Çiyin');
        },
        value: suitInstanceTrue.map1['Çiyin'],
        active: suitInstanceTrue.item4,
        text: 'Çiyin',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Boyun');
        },
        value: suitInstanceTrue.map1['Boyun'],
        active: suitInstanceTrue.item1,
        text: 'Boyun',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();

          bottomSheet(context, suitInstance, 'En');
        },
        value: suitInstanceTrue.map1['En'],
        active: suitInstanceTrue.item4,
        text: 'En',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Vatka']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Vatka');
        },
        active: suitInstanceTrue.item1,
        text: 'Vatka',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qol qat']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qol qat');
        },
        active: suitInstanceTrue.item1,
        text: 'Qol qat',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qabaq hissə']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qabaq hissə');
        },
        active: suitInstanceTrue.item1,
        text: 'Qabaq hissə',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Boyun doldurmaq/açmaq']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Boyun doldurmaq/açmaq');
        },
        active: suitInstanceTrue.item1,
        text: 'Boyun doldurmaq/açmaq',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Çiyin qaldır/düş']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Çiyin qaldır/düş');
        },
        active: suitInstanceTrue.item1,
        text: 'Çiyin qaldır/düş',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Cib artırmaq/azaltmaq']!,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Cib artırmaq/azaltmaq');
        },
        active: suitInstanceTrue.item1,
        text: 'Cib artırmaq/azaltmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Cib sinə artır/azalt');
        },
        value: suitInstanceTrue.map1['Cib sinə artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Cib sinə artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Sinə artır/azalt');
        },
        value: suitInstanceTrue.map1['Sinə artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Sinə artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Uzunluq artır/azalt');
        },
        value: suitInstanceTrue.map1['Uzunluq artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Uzunluq artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Boyun artırmaq/çıxmaq');
        },
        value: suitInstanceTrue.map1['Boyun artırmaq/çıxmaq'],
        active: suitInstanceTrue.item4,
        text: 'Boyun artırmaq/çıxmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qabaq aç / bağla');
        },
        value: suitInstanceTrue.map1['Qabaq aç / bağla'],
        active: suitInstanceTrue.item4,
        text: 'Qabaq aç / bağla',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qabaq artırmaq/azaltmaq');
        },
        value: suitInstanceTrue.map1['Qabaq artırmaq/azaltmaq'],
        active: suitInstanceTrue.item4,
        text: 'Qabaq artırmaq/azaltmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(
              context, suitInstance, 'Boyun dərinləşdirmək / qaldırmaq');
        },
        value: suitInstanceTrue.map1['Boyun dərinləşdirmək / qaldırmaq'],
        active: suitInstanceTrue.item4,
        text: 'Boyun dərinləşdirmək / qaldırmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Boyundan aşağıya qədər çıx');
        },
        value: suitInstanceTrue.map1['Boyundan aşağıya qədər çıx'],
        active: suitInstanceTrue.item4,
        text: 'Boyundan aşağıya qədər çıx',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Çiyin artırmaq/çıxartmaq');
        },
        value: suitInstanceTrue.map1['Çiyin artırmaq/çıxartmaq'],
        active: suitInstanceTrue.item4,
        text: 'Çiyin artırmaq/çıxartmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'En çıx/artır');
        },
        value: suitInstanceTrue.map1['En çıx/artır'],
        active: suitInstanceTrue.item4,
        text: 'En çıx/artır',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qol dibi sal/qaldır');
        },
        value: suitInstanceTrue.map1['Qol dibi sal/qaldır'],
        active: suitInstanceTrue.item4,
        text: 'Qol dibi sal/qaldır',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Kürək açmaq');
        },
        value: suitInstanceTrue.map1['Kürək açmaq'],
        active: suitInstanceTrue.item4,
        text: 'Kürək açmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Kürək aşağısından çıx');
        },
        value: suitInstanceTrue.map1['Kürək aşağısından çıx'],
        active: suitInstanceTrue.item4,
        text: 'Kürək aşağısından çıx',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Razrez artır/azalt');
        },
        value: suitInstanceTrue.map1['Razrez artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Razrez artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Talya çıx');
        },
        value: suitInstanceTrue.map1['Talya çıx'],
        active: suitInstanceTrue.item4,
        text: 'Talya çıx',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Böyür hissə ağzını aç');
        },
        value: suitInstanceTrue.map1['Böyür hissə ağzını aç'],
        active: suitInstanceTrue.item4,
        text: 'Böyür hissə ağzını aç',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(
              context, suitInstance, 'Böyür hissə yan tərəf artırmaq/azaltmaq');
        },
        value: suitInstanceTrue.map1['Böyür hissə yan tərəf artırmaq/azaltmaq'],
        active: suitInstanceTrue.item4,
        text: 'Böyür hissə yan tərəf artırmaq/azaltmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qol dibi qaldır/aşağı sal');
        },
        value: suitInstanceTrue.map1['Qol dibi qaldır/aşağı sal'],
        active: suitInstanceTrue.item4,
        text: 'Qol dibi qaldır/aşağı sal',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Dirsək artır/azalt');
        },
        value: suitInstanceTrue.map1['Dirsək artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Dirsək artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qolovka artır/azalt');
        },
        value: suitInstanceTrue.map1['Qolovka artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Qolovka artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qolun aşağı hissəsi artır/azalt');
        },
        value: suitInstanceTrue.map1['Qolun aşağı hissəsi artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Qolun aşağı hissəsi artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          suitInstanceTrue.bottomsheetOpen();
          bottomSheet(context, suitInstance, 'Qol eni artır/azalt');
        },
        value: suitInstanceTrue.map1['Qol eni artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'Qol eni artır/azalt',
      ),
    ];

    tabbarProvider.deleteItem(context);

    // Future<String> getWriterName() {
    //   return Future.delayed(const Duration(seconds: 1), () => "Maria Elijah");
    // }
    //
    // FutureBuilder(
    //   future: getWriterName(),
    //   builder: (context, snapshot) {
    //     // Check the connection state
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return CircularProgressIndicator();
    //     } else if (snapshot.hasError) {
    //       return ErrorWidget(
    //           "Error loading data"); // Replace with appropriate error handling
    //     } else {
    //       // Perform some action with the data
    //       tabbarProvider.deleteItem(context);
    //
    //       return Text(
    //           "Writer: ${snapshot.data}"); // Replace with appropriate UI
    //     }
    //   },
    // );

    return Container(
        width: 1027.w,
        child: Column(
          children: [
            Expanded(
              child: DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    backgroundColor: suitInstanceTrue.bottomsheetIsOpened
                        ? Color.fromRGBO(219, 219, 219, 0.51)
                        : Colors.transparent,
                    appBar: AppBar(
                      toolbarHeight: 30,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      bottom: PreferredSize(
                          preferredSize: Size.fromHeight(
                              100.0.h), // here the desired height
                          child: Stack(
                            fit: StackFit.passthrough,
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xffD4D4D4), width: 0.8),
                                  ),
                                ),
                              ),
                              TabBar(
                                labelStyle: TextStyle(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w700),
                                automaticIndicatorColorAdjustment: false,
                                labelColor: Color.fromRGBO(45, 45, 44, 0.90),
                                unselectedLabelColor:
                                    Color.fromRGBO(16, 16, 16, 0.50),
                                indicator: UnderlineTabIndicator(
                                  borderSide: BorderSide(width: 1.0),
                                  insets: EdgeInsets.only(
                                      left: 335.w, right: 340.w),
                                ),
                                controller: _tabController,
                                tabs: [
                                  // if (suitInstance.item1)
                                  const Tab(
                                    child: Text(
                                      '1.Info/Uslub',
                                    ),
                                  ),
                                  const Tab(
                                    child: Text(
                                      '2.Ölçü',
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
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                    body: Container(
                      // margin: EdgeInsets.symmetric(horizontal: 30.w),
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children: [
                          // Tabbar section 1
                          Column(
                            children: [
                              Container(
                                child: Expanded(
                                  child: SingleChildScrollView(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 30.w),
                                      child: Column(
                                        children: [
                                          Provider.of<SuitDataProvider>(context,
                                                      listen: true)
                                                  .modelSelected
                                              ? Provider.of<SuitDataProvider>(
                                                          context,
                                                          listen: true)
                                                      .SelectedModelContainer
                                                  ? const JacketColorContainer()
                                                  : SlideTransition(
                                                      position:
                                                          _offsetAnimation,
                                                      child: Model())
                                              : Column(
                                                  children: [
                                                    InfoSection(),
                                                    StyleSection(),
                                                  ],
                                                )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              CustomNextBtn(
                                  cost: '\$129',
                                  nextOrSave: () {
                                    _tabController!.index == 2
                                        ? Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Trousers()))
                                        : _tabController!.index++;
                                    print(_tabController!.index);
                                    Provider.of<SuitDataProvider>(context,
                                            listen: false)
                                        .OnlyInfoActive(_tabController!.index);
                                  },
                                  prev: () {
                                    Provider.of<SuitDataProvider>(context,
                                                listen: false)
                                            .SelectedModelContainer
                                        ? Provider.of<SuitDataProvider>(context,
                                                listen: false)
                                            .selectedModelContainerActive()
                                        : Provider.of<SuitDataProvider>(context,
                                                listen: false)
                                            .modelSelectedActive();
                                  },
                                  prevText: Provider.of<SuitDataProvider>(
                                              context,
                                              listen: true)
                                          .modelSelected
                                      ? "Prev"
                                      : "")
                            ],
                          ),
                          // Tabbar section 2
                          Column(
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Column(
                                      children: [
                                        if (tabbarProvider.itemList.length != 0)
                                          for (int index = 0;
                                              index <
                                                  tabbarProvider
                                                      .itemList.length;
                                              index += 1)
                                            tabbarProvider.itemList[index]
                                        else
                                          for (int index = 0;
                                              index < _items.length;
                                              index += 1)
                                            _items[index],
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              CustomNextBtn(
                                cost: '\$129',
                                nextOrSave: () {
                                  _tabController!.index == 2
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Trousers()))
                                      : _tabController!.index++;
                                  Provider.of<SuitDataProvider>(context,
                                          listen: false)
                                      .OnlyInfoActive(_tabController!.index);
                                },
                                prev: () {
                                  _tabController!.index != 0
                                      ? _tabController!.index--
                                      : _tabController!.index;
                                  Provider.of<SuitDataProvider>(context,
                                          listen: false)
                                      .OnlyInfoActive(_tabController!.index);
                                },
                                prevText: "Prev",
                              )
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
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30.w),
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
                                            tabbarProvider.tabLength.length +
                                                1);
                                        Provider.of<SuitDataProvider>(context,
                                                listen: false)
                                            .OnlyInfoActive(
                                                _tabController!.index);
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
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30.w),
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
                                            tabbarProvider.tabLength.length +
                                                1);
                                        Provider.of<SuitDataProvider>(context,
                                                listen: false)
                                            .OnlyInfoActive(
                                                _tabController!.index);
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
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30.w),
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
                                            tabbarProvider.tabLength.length +
                                                1);
                                        Provider.of<SuitDataProvider>(context,
                                                listen: false)
                                            .OnlyInfoActive(
                                                _tabController!.index);
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
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30.w),
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
                                            tabbarProvider.tabLength.length +
                                                2);
                                        Provider.of<SuitDataProvider>(context,
                                                listen: false)
                                            .OnlyInfoActive(
                                                _tabController!.index);
                                      }),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          // Tabbar section 3
                          Column(
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          width: double.infinity,
                                          child: Column(
                                            children:
                                                Provider.of<SuitDataProvider>(
                                                        context,
                                                        listen: true)
                                                    .result,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              CustomNextBtn(
                                cost: '\$129',
                                nextOrSave: () {
                                  _tabController!.index == 2
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Trousers()))
                                      : _tabController!.index++;
                                  Provider.of<SuitDataProvider>(context,
                                          listen: false)
                                      .OnlyInfoActive(_tabController!.index);
                                },
                                prev: () {
                                  _tabController!.index != 0
                                      ? _tabController!.index--
                                      : _tabController!.index;
                                  Provider.of<SuitDataProvider>(context,
                                          listen: false)
                                      .OnlyInfoActive(_tabController!.index);
                                },
                                prevText: "Prev",
                                nextOrSaveText: "Save",
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ],
        ));
  }
}

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    this.text = 'Next',
    required this.onPressed,
    this.white = false,
    super.key,
  });
  final String text;
  final Function() onPressed;
  final bool? white;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.h,
      width: 260.w,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide(width: 1, color: Color.fromRGBO(0, 0, 0, 0.18)),
            elevation: 1,
            backgroundColor: white! ? Colors.white : Color(0xff2d2d2c),
            foregroundColor: white! ? Color(0xff2d2d2c) : Colors.white,
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 30.sp,
                // fontFamily: 'DMSans',
                fontWeight: FontWeight.w500),
          ),
          onPressed: onPressed),
    );
  }
}

class CustomNextBtn extends StatelessWidget {
  const CustomNextBtn(
      {required this.cost,
      required this.nextOrSave,
      required this.prev,
      this.prevText,
      this.nextOrSaveText});
  final String? prevText;
  final String? nextOrSaveText;
  final String cost;
  final Function() prev;
  final Function() nextOrSave;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1),
      decoration: BoxDecoration(border: Border.all(color: Color(0xFFF4F4F4))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 40.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              cost,
              style: TextStyle(
                  color: Color(0xff2d2d2c),
                  fontSize: 45.sp,
                  fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                prevText != null && prevText != ""
                    ? CustomBtn(
                        white: true,
                        onPressed: prev,
                        text: prevText!,
                      )
                    : SizedBox(),
                CustomBtn(
                  onPressed: nextOrSave,
                  text: nextOrSaveText != null ? nextOrSaveText! : 'Next',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
