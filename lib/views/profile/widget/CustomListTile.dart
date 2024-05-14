
import 'package:flutter/material.dart';

import '../../../core/constent.dart';
import '../../logins/widget/custom_btn_log.dart';
import '../../widget/customTxtFild.dart';

class CustomListTile extends StatelessWidget {
  // final IconData icon;
  final String text1;
  final String text2;

  const CustomListTile({super.key, 
    //  required this.icon,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: IconButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close,
                            color: kcolor1,
                          ),
                        ),
                        CustomTxtFild(
                          txt: 'تعديل ',
                        ),
                        CustomBtnLog(
                          onPressed: () {},
                          title: 'حفظ',
                          backgroundColor: kcolor1,
                        )
                      ],
                    ),
                  ),
                );
              });
        },
        icon: const Icon(
          Icons.edit,
          color: kcolor1,
        ),
      ),
      title: Text(
        text1,
        style: txtstyle6,
      ),
      subtitle: Text(text2),
    );
  }
}
