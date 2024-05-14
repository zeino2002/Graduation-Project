import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Customtextrow2 extends StatelessWidget {
  Customtextrow2({
    super.key,
    this.txt1,
    this.txt2,
  });
  String? txt1;
  String? txt2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          txt1!,
          style: const TextStyle(fontSize: 18.0),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(txt2!),
      ],
    );
  }
}
