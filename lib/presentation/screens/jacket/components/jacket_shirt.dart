import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../provider/suit_data_provider.dart';
import 'ad_yazdi_container.dart';

class JacketShirt extends StatelessWidget {
  const JacketShirt({super.key});

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
                suitInstance.adyazdiSubOpen();
              },
              name: "Pencək",
            ),
            AdYazdiContainer(
              ontap: () {
                suitInstance.shirtOpen();
              },
              name: "Köynək",
            ),
          ],
        ),
      ],
    );
  }
}
