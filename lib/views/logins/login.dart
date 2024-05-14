import 'package:flutter/material.dart';
import 'package:khedma_tech/core/assets.dart';
import 'package:khedma_tech/core/constent.dart';
import 'package:khedma_tech/views/logins/sign_handMan.dart';
import 'package:khedma_tech/views/logins/sign_user.dart';
import 'package:khedma_tech/views/logins/widget/custom_btn_log.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AssetsData.logo),
            Ktitle,
            const SizedBox(
              height: 200,
            ),
            const Text(
              'هل أنت',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            const SizedBox(
              height: 75,
            ),
            CustomBtnLog(
              backgroundColor: kcolor1,
              Txtcolor: Colors.white,
              title: 'حرفى؟',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignHandMan(),),);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomBtnLog(
              Txtcolor: kcolor1,
              side: const BorderSide(color: kcolor1, width: 1),
              backgroundColor: const Color(0xffFAFAFA),
              title: 'مستخدم؟',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUser(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
