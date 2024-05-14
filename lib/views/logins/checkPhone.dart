import 'package:flutter/material.dart';
import 'package:khedma_tech/core/assets.dart';
import 'package:khedma_tech/core/constent.dart';
import 'package:khedma_tech/views/logins/verfication.dart';

import '../widget/customAppbar.dart';
import '../widget/customTxtFild.dart';
import 'widget/custom_btn_log.dart';
import 'widget/show_dialog.dart';

class CheckPhoneNum extends StatelessWidget {
  const CheckPhoneNum({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CstomAppBar(
                  txt: 'التحقق من رقم الهاتف',
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  AssetsData.img,
                ),
                Container(
                  width: 250,
                  height: 0.8,
                  color: const Color(0xffB5B5B5),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'التحقق من رقم الهاتف عن طريق ارسال \n رمز تأكيد الى هاتفك',
                      style: txtstyle3,
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTxtFild(
                  txt: 'رقم الهاتف',
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomBtnLog(
                  title: 'ارسال الكود',
                  backgroundColor: kcolor1,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Verfiy(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return ShowDialogg(
                                    image: AssetsData.imgawe,
                                    txt: 'تم انشاء حسابك بنجاح',
                                    txt2: 'العوده لتسجيل الدخول ',
                                  );
                                });
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
