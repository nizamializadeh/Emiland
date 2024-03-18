import 'package:emiland/presentation/screens/jacket/model_page/model_list.dart';
import 'package:emiland/presentation/screens/jacket/model_page/sub_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../provider/suit_data_provider.dart';
import '../components/ad_yazdi_container.dart';

class ModelPage extends StatelessWidget {
  const ModelPage({super.key});

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: true);

    return suitInstance.isModelSub ? SubCustom() : ModelList();
  }
}
