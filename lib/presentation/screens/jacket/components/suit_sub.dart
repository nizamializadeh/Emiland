import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ad_yazdi_container.dart';

class SuitSub extends StatelessWidget {
  const SuitSub({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AdYazdiContainer(
              ontap: () {},
              name: "Köynək/ Cib",
            ),
            AdYazdiContainer(
              ontap: () {},
              name: "Köynək/ Qarın",
            ),
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AdYazdiContainer(
              ontap: () {},
              name: "Köynək/ Qol",
            ),
            AdYazdiContainer(
              ontap: () {},
              name: "Köynək/ Varatnik",
            ),
          ],
        ),
      ],
    );
  }
}
