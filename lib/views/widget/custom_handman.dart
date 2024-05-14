import 'package:flutter/material.dart';
import 'package:khedma_tech/views/Rate%20&%20Review/Rate%20&%20Review.dart';

import '../../core/constent.dart';

class HandMan extends StatelessWidget {
  const HandMan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 2, right: 2),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              blurRadius: 0.8,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                  color: kcolor1,
                )),
            const Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'سباك',
                  style: txtstyle111,
                ),
                Text('احمد عيد'),
                Text('٥٠ ج.م (للمعاينة)'),
                customtxtrate()
              ],
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
      ),
    );
  }
}

class customtxtrate extends StatelessWidget {
  const customtxtrate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('٣٢  تقييم'),
        const SizedBox(
          width: 5,
        ),
        const Text('|'),
        const SizedBox(
          width: 5,
        ),
        Row(
          children: [
            const Text('٤.٥'),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Rate(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.star,
                  color: krate,
                )),
          ],
        )
      ],
    );
  }
}
