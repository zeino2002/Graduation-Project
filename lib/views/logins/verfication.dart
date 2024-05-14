import 'package:flutter/material.dart';
import 'package:khedma_tech/views/logins/create_pass.dart';
import 'package:khedma_tech/views/widget/customAppbar.dart';
import 'package:khedma_tech/views/logins/widget/custom_btn_log.dart';
import '../../core/constent.dart';
import 'widget/customVerfiy.dart';

// ignore: must_be_immutable
class Verfiy extends StatelessWidget {
  Verfiy({super.key, this.onPressed});
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CstomAppBar(
                  txt: 'التحقق من رقم الهاتف',
                ),
                const SizedBox(
                  height: 250,
                ),
                const Text(
                  'تم ارسال رمز التأكيد الى 898*****010',
                  style: txtstyle3,
                ),
                const SizedBox(
                  height: 30,
                ),
                GridView.builder(
                  reverse: true,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 6,
                  ),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.all(1),
                      child: CustomVerfiy(),
                    );
                  },
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
                              builder: (context) => const Password(),
                            ),
                          );
                        },
                        child: const Text(
                          'اعاده ارسال',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: kcolor1),
                        )),
                    const Text(
                      '   لم يتم ارسال الكود ؟',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 190,
                ),
                CustomBtnLog(
                  title: 'تحقق من الكود',
                  backgroundColor: kcolor1,
                  onPressed: onPressed,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
