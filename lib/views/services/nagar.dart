import 'package:flutter/material.dart';
import 'package:khedma_tech/views/handmen/Service-Carpenter.dart';

import '../widget/customAppService.dart';
import '../widget/custom_handman.dart';

class Carpentry extends StatelessWidget {
  const Carpentry({super.key});

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
                    txxt: 'نجارة',
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
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ServiceCarpenter(),
                              ),
                            );
                          },
                          child: const HandMan()),
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
