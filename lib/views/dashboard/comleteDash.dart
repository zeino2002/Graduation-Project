import 'package:flutter/material.dart';
import 'package:khedma_tech/views/booking/completebooking.dart';

import '../../core/constent.dart';

class CompleteDash extends StatelessWidget {
  const CompleteDash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'الخدمات المكتملة ',
              // style: txtstyle2,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward,
                  color: kcolor1,
                )),
          ],
        ),
        backgroundColor: Colors.white.withOpacity(0.5),
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CompleteBooking(),
      ),
    );
  }
}
