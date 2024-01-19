import 'package:emiland/presentation/screens/jacket/left_side_bar.dart';
import 'package:emiland/presentation/screens/jacket/right_side_bar.dart';
import 'package:flutter/material.dart';

import '../shirt/left_side_bar.dart';

class Jacket extends StatefulWidget {
  const Jacket({super.key});

  @override
  State<Jacket> createState() => _JacketState();
}

class _JacketState extends State<Jacket> {
  // bool selected = false;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(
      children: [
        // ShirtLeftSideBar(),
        JacketLeftSideBar(),
        JacketRightSideBar(),
      ],
    ));
  }
}
