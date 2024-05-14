import 'package:flutter/material.dart';
import 'package:khedma_tech/core/reusable/custom_app_bar.dart';
import 'package:khedma_tech/views/chat/widgets/chat_list.dart';
import 'package:khedma_tech/views/widget/customAppbar.dart';

class ChatListView extends StatelessWidget {

  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: OurCustomAppBar(
        label: 'الدردشة',
        hasLeading: false,
      ),
      body: ChatList(),
    );
  }
}
