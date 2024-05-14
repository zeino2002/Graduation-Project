import 'package:flutter/material.dart';
import 'package:khedma_tech/core/constent.dart';
import 'package:khedma_tech/views/logins/widget/custom_btn_log.dart';

import 'custom bottom rate.dart';
import 'customListBottom.dart';
import 'custom_slider.dart';

// ignore: must_be_immutable
class CustomFilter extends StatelessWidget {
  CustomFilter({
    super.key,
  });
  List ServiceNames = [
    'الكل',
    'نجاره',
    'دهانات',
    'نظافه',
    'تكييفات',
    'سباكه',
    'كهرباء',
    'ستايلات'
  ];

  List RatingNames = [
    'الكل',
    '5',
    '4',
    '3',
    '2',
    '1',
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          showDragHandle: true,
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          builder: (BuildContext context) {
            return SizedBox(
                height: 800,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Align(
                          child: Text(
                            'الفلتر',
                            style: txtstyle2,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(
                            color: Color(0xffC7EEFF),
                            thickness: 2,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'الخدمات ',
                          style: txtstyle444,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        customlistviewbottom(ServiceNames: ServiceNames),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'سعر المعاينة ',
                          style: txtstyle444,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const RangeSliderExample(),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'التقييم',
                          style: txtstyle444,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        custombottomrate(RatingNames: RatingNames),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(
                            color: Color(0xffC7EEFF),
                            thickness: 2,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        CustomBtnLog(
                          title: 'فلتر',
                          onPressed: () {},
                          backgroundColor: kcolor1,
                        )
                      ],
                    ),
                  ),
                ));
          },
        );
      },
      child: Container(
          width: 57,
          height: 57,
          margin: const EdgeInsets.only(left: 2),
          decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 0.5,
                )
              ]),
          child: Image.asset(
            'assets/images/l-removebg-preview.png',
            fit: BoxFit.cover,
          )),
    );
  }
}
