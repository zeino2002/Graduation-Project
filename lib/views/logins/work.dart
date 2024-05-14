import 'package:flutter/material.dart';
import 'package:khedma_tech/views/logins/widget/custom_btn_log.dart';
import 'package:khedma_tech/views/logins/widget/customgrid.dart';
import '../../core/assets.dart';
import '../../core/constent.dart';
import 'checkPhone.dart';

class Works extends StatelessWidget {
  const Works({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Image(
                    image: AssetImage(AssetsData.icon),
                    height: 60,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'اختار حرفتك',
                style: txtstyle2,
              ),
              const SizedBox(
                height: 30,
              ),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: customgrid(),
              ),
              const SizedBox(
                height: 20,
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
              )
            ],
          ),
        ),
      )),
    );
  }
}
