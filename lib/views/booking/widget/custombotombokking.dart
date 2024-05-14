import 'package:flutter/material.dart';

import '../../../core/constent.dart';
import '../../logins/widget/custom_btn_log.dart';

// ignore: must_be_immutable
class BotomBokking extends StatelessWidget {
  BotomBokking({
    super.key,
    this.txt1,
    this.txt2,
    this.txt3,
    this.txt4,
  });
  String? txt1;
  String? txt2;
  String? txt3;
  String? txt4;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            child: Text(
              txt1!,
              style: txtstyle222,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              color: kbook,
              thickness: 2,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            txt2!,
            style: txtstyle6,
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(
              color: kbook,
              thickness: 2,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 180,
                  child: CustomBtnLog(
                    backgroundColor: kcolor1,
                    title: txt3,
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: CustomBtnLog(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: kcolor1),
                    Txtcolor: Colors.black,
                    title: txt4,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
