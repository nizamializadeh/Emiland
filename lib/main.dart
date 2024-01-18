import 'package:emiland/presentation/screens/jacket/jacket_page.dart';
import 'package:emiland/presentation/screens/shirt/shirt_page.dart';

import 'package:emiland/provider/checkbox_provider.dart';
import 'package:emiland/provider/dropdown_provider.dart';
import 'package:emiland/provider/suit_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(2732, 2048),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => SuitDataProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => CheckboxProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => DropDownProvider(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          ),
        );
      },
      child: const Jacket(),
      // child: Shirt(),
      // child: const Lekals(),
    );
  }
}
