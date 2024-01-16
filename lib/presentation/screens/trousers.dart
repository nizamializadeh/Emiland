import 'package:emiland/provider/suit_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../components/custom_container.dart';

class Trousers extends StatelessWidget {
  const Trousers({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<SuitDataProvider>();
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 1635.w,
                  height: 739.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 4.w),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomContainer(
                            width: 823,
                            height: 439,
                            color: Color(0xFFD9D9D9),
                          ),
                          Column(
                            children: [
                              CustomContainer(
                                width: 804,
                                height: 144,
                                isFlexible: false,
                                isBorderLeft: true,
                                isBorderBottom: true,
                                // text: provider.boyun.toString(),
                                text: 'test',
                              ),
                              const CustomContainer(
                                width: 804,
                                isFlexible: false,
                                isBorderLeft: true,
                                text: "Sifariş verilən ünvan",
                              ),
                              const Row(
                                children: [
                                  CustomContainer(
                                    width: 400,
                                    isFlexible: false,
                                    isBorderTop: true,
                                    isBorderLeft: true,
                                    isBorderRight: true,
                                    text: "Sifariş",
                                  ),
                                  CustomContainer(
                                    isFlexible: false,
                                    isBorderTop: true,
                                    text: "Təhvil",
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const CustomContainer(
                        width: 1639,
                        isBorderTop: true,
                        isBorderBottom: true,
                        text: "Ad, soyad",
                      ),
                      const Expanded(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 6,
                                child: CustomContainer(
                                  text: "Əlaqə nömrəsi",
                                )),
                            Expanded(
                                flex: 3,
                                child: CustomContainer(
                                  isBorderLeft: true,
                                  text: "Qeyd",
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 1048.w,
                  height: 739.h,
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          CustomContainer(
                            width: 349,
                            isBorderTop: true,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "Model",
                          ),
                          CustomContainer(
                            width: 349,
                            isBorderTop: true,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "Parça",
                          ),
                          CustomContainer(
                            width: 350,
                            isBorderTop: true,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "Düymə",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomContainer(
                            width: 349,
                            height: 444,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "",
                          ),
                          CustomContainer(
                            width: 349,
                            height: 444,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "",
                          ),
                          CustomContainer(
                            width: 350,
                            height: 444,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomContainer(
                            width: 547,
                            height: 147,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "Ölçü götürən",
                          ),
                          CustomContainer(
                            width: 499,
                            height: 147,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "Təcili",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                CustomContainer(
                  width: 362,
                  isBorderLeft: true,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Ölçü",
                ),
                CustomContainer(
                  width: 356,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Boy",
                ),
                CustomContainer(
                  width: 374,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Bel",
                ),
                CustomContainer(
                  width: 381,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Bud",
                ),
                CustomContainer(
                  width: 422,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Balaq",
                ),
                CustomContainer(
                  width: 361,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Uzunluq",
                ),
                CustomContainer(
                  width: 425,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Qat",
                ),
              ],
            ),
            const Row(
              children: [
                CustomContainer(
                  width: 362,
                  isBorderLeft: true,
                  isBorderRight: true,
                  text: "Zamok",
                ),
                CustomContainer(
                  width: 356,
                  isBorderRight: true,
                  text: "Diz",
                ),
                CustomContainer(
                  width: 374,
                  isBorderRight: true,
                  text: "Forması",
                ),
              ],
            ),
            Stack(
              children: [
                Positioned(
                  left: 60,
                  top: 10,
                  child: Container(
                    width: 180,
                    height: 60,
                    color: Colors.transparent,
                    child: Text(
                      'ŞALVAR',
                      style: TextStyle(
                          fontSize: 44.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 1093.w,
                  child: Image.asset('assets/png/lolita2.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
