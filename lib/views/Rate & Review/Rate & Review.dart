import 'package:flutter/material.dart';
import 'package:khedma_tech/core/constent.dart';
import 'package:khedma_tech/views/logins/widget/custom_btn_log.dart';
import '../widget/customAppService.dart';
import 'widget/customdialograte.dart';
import 'widget/customratingRewie.dart';
import 'widget/customtxtarea.dart';

class Rate extends StatelessWidget {
  const Rate({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: customAppService(
                    txxt: 'تقييم الخدمة',
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff40A2D8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: () {
                    // Button pressed logic here
                  },
                  child: const Text(
                    'قيم الخدمة',
                    style: txtstyle1,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                    ),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const RatingRewie();
                    },
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                CustomTxtArea(txt: 'اكتب تعليقك'),
                const SizedBox(
                  height: 30,
                ),
                CustomBtnLog(
                  title: 'ارسال',
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return DialogRate(
                            txt: 'شكرا على تقييمك',
                          );
                        });
                  },
                  backgroundColor: kcolor1,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
