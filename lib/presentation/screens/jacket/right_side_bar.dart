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
          bottomSheet(context, suitInstance, 'Çiyin');
        },
        value: suitInstanceTrue.map1['Çiyin'],
        active: suitInstanceTrue.item4,
        text: 'Çiyin',
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
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'en');
        },
        value: suitInstanceTrue.map1['en'],
        active: suitInstanceTrue.item4,
        text: 'En',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['vatka']!,
        onTap: () {
          bottomSheet(context, suitInstance, 'vatka');
        },
        active: suitInstanceTrue.item1,
        text: 'vatka',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qol qat']!,
        onTap: () {
          bottomSheet(context, suitInstance, 'Qol qat');
        },
        active: suitInstanceTrue.item1,
        text: 'Qol qat',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['Qabaq hissə']!,
        onTap: () {
          bottomSheet(context, suitInstance, 'Qabaq hissə');
        },
        active: suitInstanceTrue.item1,
        text: 'Qabaq hissə',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['boyun doldurmaq/açmaq']!,
        onTap: () {
          bottomSheet(context, suitInstance, 'boyun doldurmaq/açmaq');
        },
        active: suitInstanceTrue.item1,
        text: 'boyun doldurmaq/açmaq',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['çiyin qaldır/düş']!,
        onTap: () {
          bottomSheet(context, suitInstance, 'çiyin qaldır/düş');
        },
        active: suitInstanceTrue.item1,
        text: 'çiyin qaldır/düş',
      ),
      TabBarItem(
        width: double.infinity,
        value: suitInstanceTrue.map1['cib artırmaq/azaltmaq']!,
        onTap: () {
          bottomSheet(context, suitInstance, 'cib artırmaq/azaltmaq');
        },
        active: suitInstanceTrue.item1,
        text: 'cib artırmaq/azaltmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'cib sinə artır/azalt');
        },
        value: suitInstanceTrue.map1['cib sinə artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'cib sinə artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'sinə artır/azalt');
        },
        value: suitInstanceTrue.map1['sinə artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'sinə artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'uzunluq artır/azalt');
        },
        value: suitInstanceTrue.map1['uzunluq artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'uzunluq artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'boyun artırmaq/çıxmaq');
        },
        value: suitInstanceTrue.map1['boyun artırmaq/çıxmaq'],
        active: suitInstanceTrue.item4,
        text: 'boyun artırmaq/çıxmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'qabaq aç / bağla');
        },
        value: suitInstanceTrue.map1['qabaq aç / bağla'],
        active: suitInstanceTrue.item4,
        text: 'qabaq aç / bağla',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'qabaq artırmaq/azaltmaq');
        },
        value: suitInstanceTrue.map1['qabaq artırmaq/azaltmaq'],
        active: suitInstanceTrue.item4,
        text: 'qabaq artırmaq/azaltmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(
              context, suitInstance, 'boyun dərinləşdirmək / qaldırmaq');
        },
        value: suitInstanceTrue.map1['boyun dərinləşdirmək / qaldırmaq'],
        active: suitInstanceTrue.item4,
        text: 'boyun dərinləşdirmək / qaldırmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'boyundan aşağıya qədər çıx');
        },
        value: suitInstanceTrue.map1['boyundan aşağıya qədər çıx'],
        active: suitInstanceTrue.item4,
        text: 'boyundan aşağıya qədər çıx',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'çiyin artırmaq/çıxartmaq');
        },
        value: suitInstanceTrue.map1['çiyin artırmaq/çıxartmaq'],
        active: suitInstanceTrue.item4,
        text: 'çiyin artırmaq/çıxartmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'en çıx/artır');
        },
        value: suitInstanceTrue.map1['en çıx/artır'],
        active: suitInstanceTrue.item4,
        text: 'en çıx/artır',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'qol dibi sal/qaldır');
        },
        value: suitInstanceTrue.map1['qol dibi sal/qaldır'],
        active: suitInstanceTrue.item4,
        text: 'qol dibi sal/qaldır',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'kürək açmaq');
        },
        value: suitInstanceTrue.map1['kürək açmaq'],
        active: suitInstanceTrue.item4,
        text: 'kürək açmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'kürək aşağısından çıx');
        },
        value: suitInstanceTrue.map1['kürək aşağısından çıx'],
        active: suitInstanceTrue.item4,
        text: 'kürək aşağısından çıx',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'razrez artır/azalt');
        },
        value: suitInstanceTrue.map1['razrez artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'razrez artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'talya çıx');
        },
        value: suitInstanceTrue.map1['talya çıx'],
        active: suitInstanceTrue.item4,
        text: 'talya çıx',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'böyür hissə ağzını aç');
        },
        value: suitInstanceTrue.map1['böyür hissə ağzını aç'],
        active: suitInstanceTrue.item4,
        text: 'böyür hissə ağzını aç',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(
              context, suitInstance, 'böyür hissə yan tərəf artırmaq/azaltmaq');
        },
        value: suitInstanceTrue.map1['böyür hissə yan tərəf artırmaq/azaltmaq'],
        active: suitInstanceTrue.item4,
        text: 'böyür hissə yan tərəf artırmaq/azaltmaq',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'qol dibi qaldır/aşağı sal');
        },
        value: suitInstanceTrue.map1['qol dibi qaldır/aşağı sal'],
        active: suitInstanceTrue.item4,
        text: 'qol dibi qaldır/aşağı sal',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'dirsək artır/azalt');
        },
        value: suitInstanceTrue.map1['dirsək artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'dirsək artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'qolovka artır/azalt');
        },
        value: suitInstanceTrue.map1['qolovka artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'qolovka artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'qolun aşağı hissəsi artır/azalt');
        },
        value: suitInstanceTrue.map1['qolun aşağı hissəsi artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'qolun aşağı hissəsi artır/azalt',
      ),
      TabBarItem(
        width: double.infinity,
        onTap: () {
          bottomSheet(context, suitInstance, 'qol eni artır/azalt');
        },
        value: suitInstanceTrue.map1['qol eni artır/azalt'],
        active: suitInstanceTrue.item4,
        text: 'qol eni artır/azalt',
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
              flex: 9,
              child: DefaultTabController(
                length: 3,
                child: Scaffold(
                  backgroundColor: suitInstanceTrue.bottomsheetIsOpened
                      ? Color.fromRGBO(219, 219, 219, 0.51)
                      : Colors.transparent,
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    bottom: TabBar(
                      labelStyle: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.w700),
                      labelColor: Color.fromRGBO(45, 45, 44, 0.90),
                      unselectedLabelColor: Color.fromRGBO(16, 16, 16, 0.50),
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 1.0),
                        insets: EdgeInsets.only(left: 335.w, right: 333.w),
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
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 30.w),
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
                                                    position: _offsetAnimation,
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
                                prevText: Provider.of<SuitDataProvider>(context,
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
                                                tabbarProvider.itemList.length;
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
                              },
                              prev: () {
                                _tabController!.index != 0
                                    ? _tabController!.index--
                                    : _tabController!.index;
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
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
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
                              },
                              prev: () {
                                _tabController!.index != 0
                                    ? _tabController!.index--
                                    : _tabController!.index;
                              },
                              prevText: "Prev",
                              nextOrSaveText: "Save",
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
      height: 100.h,
      width: 300.w,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: white! ? Colors.white : Color(0xff2d2d2c),
            foregroundColor: white! ? Color(0xff2d2d2c) : Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 0.1),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 43.sp,
                fontFamily: 'DMSans',
                fontWeight: FontWeight.w400),
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
      margin: EdgeInsets.only(top: 10, left: 1),
      decoration: BoxDecoration(border: Border.all(color: Color(0xFFF4F4F4))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
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
