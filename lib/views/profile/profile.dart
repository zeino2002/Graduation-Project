import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khedma_tech/views/booking/widget/custombotombokking.dart';
import 'package:khedma_tech/views/contactus/contactus.dart';
import 'package:khedma_tech/views/contactus/privecy.dart';
import 'package:khedma_tech/views/profile/editprofile.dart';
import '../../core/constent.dart';
import '../RecommendedFavourites/Favourites.dart';
import 'widget/customappprofile.dart';
import 'widget/customcontainerprofile.dart';
import 'widget/customexit.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const customappprofile(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    children: [
                      const Text(
                        'رمزي صالح',
                        style: txtstyle6,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'ramzysaleh@gmail.com',
                        style: TextStyle(color: background),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      customcontainerprofile(
                        txt: 'تعديل معلومات الحساب',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProfile(),
                            ),
                          );
                        },
                        icon: FontAwesomeIcons.addressCard,
                        txt2: 'الحرفيين المفضليين',
                        onPressed2: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Favourites(),
                            ),
                          );
                        },
                        icon2: FontAwesomeIcons.heart,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 2,
                        color: kbook,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      customcontainerprofile(
                        txt: 'تواصل معنا ',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ContactUs(),
                            ),
                          );
                        },
                        icon: FontAwesomeIcons.headset,
                        txt2: 'سياسة الخصوصية',
                        onPressed2: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Privecy(),
                            ),
                          );
                        },
                        icon2: FontAwesomeIcons.fileShield,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: customexit(
                          onTap: () {
                            showModalBottomSheet(
                              showDragHandle: true,
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                ),
                              ),
                              builder: (BuildContext context) {
                                return BotomBokking(
                                  txt1: 'تسجيل الخروج',
                                  txt2: 'هل انت متأكد من تسجيل خروجك',
                                  txt3: 'نعم',
                                  txt4: 'لا',
                                );
                              },
                            );
                          },
                          txt: 'تسجيل الخروج',
                          icon: FontAwesomeIcons.rightFromBracket,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
