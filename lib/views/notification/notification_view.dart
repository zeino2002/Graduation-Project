import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khedma_tech/core/reusable/custom_app_bar.dart';

class NotificationView extends StatelessWidget {
  static const String id ='/notify';
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: OurCustomAppBar(label: 'الاشعارات ', hasLeading: true),
      body: Column(
        children: [
          NotifyItem(
            isDone: true,
            header: 'تم تعديل حسابك بنجاح',
            body: 'لقد قمت بتغيير الاسم وكلمة السر ',
          ),

          NotifyItem(
            isDone: true,
            header: 'تم حجز خدمه الكهرباء بنجاح',
            body: 'لقد قمت بحجز خدمتك لا تنسى تقييم الخدمة ',
          ),

          NotifyItem(
            isDone: false,
            header: 'تم الغاء حجز خدمه النجاره ',
            body: 'لقد قمت بالغاء حجز خدمتك ',
          ),

        ],
      ),
    );
  }
}

class NotifyItem extends StatelessWidget {
  const NotifyItem({super.key, required this.isDone, required this.header, required this.body});

  final bool isDone;
  final String header;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            isDone ? const CircleAvatar(
              backgroundColor: Colors.green,
              radius: 30,
              child: Icon(Icons.check),
            ) : const CircleAvatar(
              backgroundColor: Colors.red,
              radius: 30,
              child: Icon(Icons.close),
            ),
            const SizedBox(width: 16,),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(header),
                  const SizedBox(height: 8,),
                  Text(body),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
