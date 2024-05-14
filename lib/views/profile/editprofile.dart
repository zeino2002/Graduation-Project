import 'package:flutter/material.dart';
import 'package:khedma_tech/core/constent.dart';
import '../booking/widget/custombotombokking.dart';
import 'widget/CustomListTile.dart';
import 'widget/customaddprofile.dart';
import 'widget/customexit.dart';

// ignore: must_be_immutable
class EditProfile extends StatelessWidget {
  EditProfile({super.key});
  List<String> addres = [
    'الاسم',
    'رقم الهاتف',
    'كلمة السر ',
    'العنوان',
    'البريد الالكتروني '
  ];
  List<String> sub = [
    'محمد سعيد',
    '010123456789',
    '********',
    'كفر الشيخ مساكن الزراعة بجوار سوبر ماركت المصطفى',
    'mohamedsaeed@gmail.com'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AddProfile(
                    txt: 'تعديل معلومات الحساب ',
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: addres.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomListTile(
                          text1: addres[index], text2: sub[index]);
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 2,
                    color: kbook,
                  ),
                  const SizedBox(
                    height: 30,
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
                              txt1: 'حذف حسابك',
                              txt2: 'هل انت متأكد من حذف حسابك',
                              txt3: 'نعم',
                              txt4: 'لا',
                            );
                          },
                        );
                      },
                      icon: Icons.delete,
                      txt: 'حذف حسابك',
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
