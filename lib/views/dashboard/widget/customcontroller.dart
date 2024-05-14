
import 'package:flutter/material.dart';

import '../../../core/constent.dart';

// ignore: must_be_immutable
class CustomController extends StatelessWidget {
  CustomController({super.key, this.onTap, this.txt});
  void Function()? onTap;
  String? txt;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: kcolor1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '5',
                    style: txtstyle22,
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
                ],
              ),
              Text(txt!)
            ],
          ),
        ),
      ),
    );
  }
}
