import 'package:flutter/material.dart';

import '../../widget/customAppService.dart';
import 'Customcustomsammry.dart';

class AllRecommend extends StatelessWidget {
  const AllRecommend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: customAppService(
                  txxt: 'كل المراجعات',
                ),
              ),
              // const SizedBox(
              //   height: 16,
              // ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: CustomSammry(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
