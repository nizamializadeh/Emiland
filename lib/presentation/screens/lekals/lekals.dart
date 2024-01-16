import 'package:emiland/presentation/screens/lekals/right_side_bar.dart';
import 'package:flutter/material.dart';
import 'left_side_bar.dart';

class Lekals extends StatefulWidget {
  const Lekals({super.key});

  @override
  State<Lekals> createState() => _LekalsState();
}

class _LekalsState extends State<Lekals> {
  // bool selected = false;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(
      children: [
        LeftSideBar(),
        RightSideBar(),
        
      ],
    ));
  }
}
