import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khedma_tech/core/reusable/custom_app_bar.dart';
import 'package:khedma_tech/core/reusable/text_style_helper.dart';
import 'package:khedma_tech/views/chat/widgets/custom_text_field.dart';
import 'package:khedma_tech/views/chat/widgets/messages_list.dart';

class ChatScreen extends StatelessWidget {
  static const String id = '/chat';
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const OurCustomAppBar(
        hasLeading: true,
        label: 'User Name',
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.blue.withOpacity(0.5),
            ),
            child: const Text(
              'Day',
              style: AppTextStyleHelper.font14w400White,
            ),
          ),
          const Expanded(child: MessagesList(),),
          CustomTextField()
        ],
      ),
    );
  }
}
