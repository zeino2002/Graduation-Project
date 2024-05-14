import 'package:flutter/material.dart';
import 'package:khedma_tech/views/notification/notification_view.dart';

import '../../core/constent.dart';

// ignore: must_be_immutable
class CustomNotify extends StatelessWidget {
  CustomNotify({
    required this.icon,
    super.key,
  });
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 57,
        height: 57,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                blurRadius: 0.5,
              )
            ]),
        child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, NotificationView.id);
            },
            icon: Icon(
              icon,
              color: kcolor1,
              size: 32,
            )));
  }
}
