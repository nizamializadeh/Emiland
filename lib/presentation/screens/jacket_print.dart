import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/custom_container.dart';

class JacketPrint extends StatelessWidget {
  const JacketPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
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
                  child: const Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomContainer(
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
                                text: "Sifariş verilən ünvan",
                              ),
                              CustomContainer(
                                width: 804,
                                isFlexible: false,
                                isBorderLeft: true,
                                text: "Şəhər",
                              ),
                              Row(
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
                              ),
                            ],
                          ),
                        ],
                      ),
                      CustomContainer(
                        width: 1639,
                        isBorderTop: true,
                        isBorderBottom: true,
                        text: "Ad, soyad",
                      ),
                      Expanded(
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
                            height: 76,
                            isBorderTop: true,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "Model",
                          ),
                          CustomContainer(
                            width: 346,
                            height: 76,
                            isBorderTop: true,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "Parça",
                          ),
                          CustomContainer(
                            width: 352,
                            height: 76,
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
                            height: 290,
                            isBorderRight: true,
                            text: "",
                          ),
                          CustomContainer(
                            width: 346,
                            height: 290,
                            isBorderRight: true,
                            text: "",
                          ),
                          CustomContainer(
                            width: 352,
                            height: 290,
                            isBorderRight: true,
                            text: "",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomContainer(
                            width: 349,
                            height: 82,
                            isBorderTop: true,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "Lekal",
                          ),
                          CustomContainer(
                            width: 346,
                            height: 82,
                            isBorderTop: true,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "Ölçü",
                          ),
                          CustomContainer(
                            width: 352,
                            height: 82,
                            isBorderTop: true,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "Astar",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomContainer(
                            width: 349,
                            height: 291,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "",
                          ),
                          CustomContainer(
                            width: 346,
                            height: 291,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "",
                          ),
                          CustomContainer(
                            width: 352,
                            height: 291,
                            isBorderRight: true,
                            isBorderBottom: true,
                            text: "",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            const Row(
              children: [
                CustomContainer(
                  width: 379,
                  isBorderLeft: true,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Ölçü",
                ),
                CustomContainer(
                  width: 419,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Boy",
                ),
                CustomContainer(
                  width: 359,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Bel",
                ),
                CustomContainer(
                  width: 388,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Bud",
                ),
                CustomContainer(
                  width: 348,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Balaq",
                ),
                CustomContainer(
                  width: 312,
                  isBorderRight: true,
                  isBorderBottom: true,
                  text: "Uzunluq",
                ),
                CustomContainer(
                  width: 475,
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
