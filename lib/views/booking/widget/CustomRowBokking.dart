import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constent.dart';
import 'button1.dart';

// ignore: must_be_immutable
class CustomRowBokking extends StatelessWidget {
  CustomRowBokking({super.key, this.backgroundColor, this.text, this.width});
  Color? backgroundColor;
  String? text;
  double? width;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: background),
          child: IconButton(
              onPressed: () {
                // Navigator.pop(context);
              },
              icon: const Icon(
                FontAwesomeIcons.commentDots,
                color: kcolor1,
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: width,
            ),
            Column(
              children: [
                const Text(
                  'سباك',
                  style: txtstyle111,
                ),
                const Text('احمد عيد'),
                CustomButton1Booking(
                  backgroundColor: backgroundColor,
                  text: text,
                  onPressed: () {},
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: background, borderRadius: BorderRadius.circular(8)),
              width: 120,
              height: 120,
              child: Image.asset(
                'assets/images/11.png',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ],
    );
  }
}
