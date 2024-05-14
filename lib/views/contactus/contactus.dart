import 'package:flutter/material.dart';
import 'package:khedma_tech/core/constent.dart';
import 'package:khedma_tech/views/Rate%20&%20Review/widget/customdialograte.dart';
import 'package:khedma_tech/views/Rate%20&%20Review/widget/customtxtarea.dart';
import 'package:khedma_tech/views/logins/widget/custom_btn_log.dart';
import 'package:khedma_tech/views/widget/customTxtFild.dart';

import '../widget/customAppService.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              customAppService(
                txxt: 'تواصل معنا',
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'عندك سؤال او محتاج مساعدة ؟',
                style: txtstyle444,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'تواصل معنا في اي وقت',
                style: txtstyle6,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTxtFild(
                txt: '*الاسم',
              ),
              CustomTxtFild(
                txt: '*رقم الهاتف',
              ),
              CustomTxtArea(
                txt: '*اكتب سؤالك',
              ),
              const SizedBox(
                height: 50,
              ),
              CustomBtnLog(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return DialogRate(
                          txt: 'تم ارسال استفسارك',
                        );
                      });
                },
                title: 'ارسال',
                backgroundColor: kcolor1,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
