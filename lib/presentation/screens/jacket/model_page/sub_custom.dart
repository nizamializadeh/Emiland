import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../provider/suit_data_provider.dart';
import '../../lekals/tab_bar_item.dart';

class SubCustom extends StatelessWidget {
  const SubCustom({super.key});

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: true);

    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          TabBarItem(
            width: double.infinity,
            onTap: () {
              suitInstance.costUpdate(55);
            },
            value: 55,
            text: 'Test1',
          ),
          TabBarItem(
            width: double.infinity,
            onTap: () {
              suitInstance.costUpdate(33);
            },
            value: 33,
            text: 'Test2',
          ),
          TabBarItem(
            width: double.infinity,
            onTap: () {
              suitInstance.costUpdate(185);
            },
            value: 185,
            text: 'Test3',
          ),
        ],
      ),
    );
  }
}
