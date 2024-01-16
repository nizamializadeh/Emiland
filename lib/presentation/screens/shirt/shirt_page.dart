import 'package:emiland/presentation/screens/jacket/left_side_bar.dart';
import 'package:emiland/presentation/screens/jacket/right_side_bar.dart';
import 'package:emiland/presentation/screens/shirt/right_side_bar.dart';
import 'package:flutter/material.dart';

import 'left_side_bar.dart';

class Shirt extends StatefulWidget {
  const Shirt({super.key});

  @override
  State<Shirt> createState() => _ShirtState();
}

class _ShirtState extends State<Shirt> {
  // bool selected = false;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(
      children: [
        ShirtLeftSideBar(),
        ShirtRightSideBar(),
      ],
    ));
  }
}
