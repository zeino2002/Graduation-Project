import 'package:flutter/material.dart';
import 'package:khedma_tech/core/constent.dart';

import '../widget/customAppService.dart';

class Privecy extends StatelessWidget {
  const Privecy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            customAppService(
              txxt: 'سياسة الخصوصية',
            ),
            const Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'صفحة سياسة الخصوصية',
                      style: txtstyle1,
                    ),
                    Text(
                        'في تطبيق (خدمة تك )، ندرك أن خصوصية معلوماتك الشخصية هامة لك ولنا.'),
                    Text(
                        'فيما يلي معلومات حول أنواع المعلومات الشخصية التي نتلقاها ونقوم بجمعها عند زيارات (خدمة تك )، وكيف نقوم بحماية معلوماتك الشخصية.')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
