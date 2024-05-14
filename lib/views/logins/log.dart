import 'package:flutter/material.dart';
import 'package:khedma_tech/views/dashboard/home_handman.dart';
import 'package:khedma_tech/views/logins/sign_handMan.dart';
import '../../core/constent.dart';
import '../widget/customTxtFild.dart';
import 'create_pass.dart';
import 'widget/custom_btn_log.dart';
import '../widget/custom_contianer.dart';
import '../widget/custom_txt_logs.dart';

class Log extends StatelessWidget {
  const Log({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 200, child: CustomContainer()),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 30,
              ),
              child: Column(
                children: [
                  Container(
                    child: CustomTxtLogs(
                      txt: 'اهلا بيك من تاني',
                      title: 'تسجيل الدخول لحسابك',
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTxtFild(
                    txt: 'البريد الالكتروني او رقم الهاتف',
                  ),
                  CustomTxtFild(
                    prefixIcon: const Icon(Icons.visibility),
                    txt: 'كلمه السر',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Password()));
                          },
                          child: const Text(
                            'هل نسيت كلمه السر؟',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: kcolor1),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomBtnLog(
                    title: 'الدخول',
                    backgroundColor: kcolor1,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePageHandMan(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignHandMan(),
                              ),
                            );
                          },
                          child: const Text(
                            'سجل حسابك دلوقتى',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: kcolor1),
                          )),
                      const Text(
                        '   لسه جديد؟',
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
