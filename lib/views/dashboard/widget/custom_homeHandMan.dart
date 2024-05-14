import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khedma_tech/views/dashboard/alldash.dart';
import 'package:khedma_tech/views/dashboard/comleteDash.dart';
import 'package:khedma_tech/views/dashboard/farwarddash.dart';
import 'package:khedma_tech/views/dashboard/rejectdash.dart';
import 'package:khedma_tech/views/dashboard/waitdash.dart';
import 'package:khedma_tech/views/dashboard/widget/allrecommend.dart';
import 'package:khedma_tech/views/dashboard/widget/customcontroller.dart';
import 'package:khedma_tech/views/widget/custom_handman.dart';

import '../../../core/assets.dart';
import '../../../core/constent.dart';
import '../../widget/custom_address.dart';
import '../../widget/custom_notify.dart';
import 'Customcustomsammry.dart';

class HomeHandMan extends StatelessWidget {
  const HomeHandMan({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomNotify(icon: FontAwesomeIcons.person),
                    const Text(
                      'لوحة التحكم',
                      style: txtstyle2,
                    ),
                    CustomNotify(icon: FontAwesomeIcons.bell),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Text(
                      'اهلا,',
                      style: txtstyle2,
                    ),
                    const Text(
                      'عمر',
                      style: txtstyle22,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(AssetsData.welcome, width: 45),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomController(
                      txt: 'كل الخدمات',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllDash(),
                          ),
                        );
                      },
                    ),
                    CustomController(
                      txt: 'الخدمات المكتملة',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CompleteDash(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomController(
                      txt: 'الخدمات الملغية',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RejectDash(),
                          ),
                        );
                      },
                    ),
                    CustomController(
                      txt: 'الخدمات القادمة',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FarwardDash(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomController(
                  txt: 'خدمات قيد الانتظار ',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WaitDash(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  thickness: 2,
                  color: kbook,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'التقييم والمراجعات',
                        style: txtstyle11,
                      ),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomAdderss(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AllRecommend(),
                                  ),
                                );
                              },
                              txt: '',
                            ),
                            const customtxtrate(),
                          ],
                        ),
                      ),
                      ListView.builder(
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
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
