import 'package:flutter/material.dart';
import 'package:khedma_tech/core/constent.dart';
import 'package:khedma_tech/views/logins/checkPhone.dart';
import 'package:khedma_tech/views/logins/log.dart';
import 'package:khedma_tech/views/logins/widget/custom_btn_log.dart';
import '../widget/customTxtFild.dart';
import '../widget/custom_contianer.dart';
import '../widget/custom_txt_logs.dart';

class SignUser extends StatelessWidget {
  const SignUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomContainer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    child: CustomTxtLogs(
                      txt: 'اهلا',
                      title: 'انشاء حساب جديد',
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTxtFild(
                    txt: 'الاسم',
                  ),
                  CustomTxtFild(
                    txt: 'رقم الهاتف',
                  ),
                  CustomTxtFild(
                    txt: 'البريد الالكتروني',
                    prefixIcon: const SizedBox(
                      child: Center(
                        widthFactor: 0.0,
                        child: Text('(اختياري) '),
                      ),
                    ),
                  ),
                  CustomTxtFild(
                    prefixIcon: const Icon(Icons.visibility),
                    txt: 'كلمه السر',
                    obscureText: true,
                  ),
                  CustomTxtFild(
                    prefixIcon: const Icon(Icons.visibility),
                    txt: 'تأكيد كلمه السر',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomBtnLog(
                    title: 'انشاء حساب',
                    backgroundColor: kcolor1,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckPhoneNum(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Log()));
                          },
                          child: const Text(
                            'سجل دخول',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: kcolor1),
                          )),
                      const Text(
                        '   عندك حساب؟',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
