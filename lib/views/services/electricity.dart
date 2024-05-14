import 'package:flutter/material.dart';

import '../widget/customAppService.dart';
import '../widget/custom_handman.dart';

class electricity extends StatelessWidget {
  const electricity({super.key});

  @override
  Widget build(BuildContext context) {
   return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: customAppService(
                    txxt: 'كهرباء',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: HandMan(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}