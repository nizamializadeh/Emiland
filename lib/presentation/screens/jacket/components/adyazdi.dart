import 'package:emiland/presentation/screens/jacket/components/suit_sub.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../provider/suit_data_provider.dart';
import 'ad_yazdi_container.dart';
import 'adyazdi_jacket_sub.dart';
import 'jacket_shirt.dart';

class AdYazdi extends StatelessWidget {
  const AdYazdi({super.key});

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: false);
    return suitInstance.adYazdiSub
        ? JacketSub()
        : suitInstance.isShirt
            ? SuitSub()
            : JacketShirt();
  }
}
