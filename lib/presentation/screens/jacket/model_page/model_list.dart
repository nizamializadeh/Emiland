import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../provider/suit_data_provider.dart';
import '../components/ad_yazdi_container.dart';

class ModelList extends StatelessWidget {
  const ModelList({super.key});

  @override
  Widget build(BuildContext context) {
    SuitDataProvider suitInstance =
        Provider.of<SuitDataProvider>(context, listen: true);

    return Column(
      children: [
        SizedBox(
          height: 60.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AdYazdiContainer(
              ontap: () {
                suitInstance.isModelSubOpen();
              },
              name: "Fərdi",
            ),
            AdYazdiContainer(
              ontap: () {},
              name: "Hazır Modellər",
            ),
          ],
        ),
      ],
    );
  }
}
