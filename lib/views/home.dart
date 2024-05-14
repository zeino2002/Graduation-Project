import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khedma_tech/core/constent.dart';
import 'package:khedma_tech/views/RecommendedFavourites/Recommended.dart';
import 'package:khedma_tech/views/services%20page.dart';
import 'package:khedma_tech/views/services/electricity.dart';
import 'package:khedma_tech/views/widget/custom_address.dart';
import 'package:khedma_tech/views/widget/custom_handman.dart';
import 'package:khedma_tech/views/widget/custom_notify.dart';
import 'package:khedma_tech/views/widget/custom_service.dart';

import '../core/assets.dart';
import 'services/Air conditioners.dart';
import 'services/Paints.dart';
import 'services/Plumbing.dart';
import 'services/nagar.dart';
import 'widget/custom_filter.dart';
import 'widget/custom_txt_home.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});
  List ServiceName = [
    'كهرباء',
    'سباكه',
    'نجاره',
    'المزيد',
    'تكييفات',
    'دهانات'
  ];
  List<Color> colors = [kbc1, kbc4, kbc2, kbc7, kbc6, kbc3];
  List<String> imgs = [
    AssetsData.img1,
    AssetsData.img3,
    AssetsData.img2,
    AssetsData.img9,
    AssetsData.img6,
    AssetsData.img4,
  ];

  final Map<int, Widget> itemRoutes = {
    0: const electricity(),
    1: const Plumbing(),
    2: const Carpentry(),
    3: ServicesPage(),
    4: const Airconditioners(),
    5: const Paints(),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: CustomBottomNavigationBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: CustomNotify(icon: FontAwesomeIcons.bell)),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'خدمة تك',
                      style: txtstyle22,
                    ),
                    Text(
                      ' اهلا بيك في',
                      style: txtstyle2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'هنا هتلاقي كل اللي بيتك محتاجه',
                  style: txtstyle44,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomFilter(),
                    CustomTxtHome(hintText: 'بتدور على ايه ؟'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomAdderss(
                  txt: 'الخدمات',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ServicesPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomService(
                    onTap: (index) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => itemRoutes[index]!),
                      );
                    },
                    ServiceName: ServiceName,
                    colors: colors,
                    imgs: imgs),
                const Divider(
                  color: Color(0xffBFCFE7),
                  thickness: 2,
                ),
                CustomAdderss(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Recommended(),
                      ),
                    );
                  },
                  txt: 'الحرفيين المرشحيين',
                ),
                const SizedBox(
                  height: 10,
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
