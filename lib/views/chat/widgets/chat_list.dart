import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khedma_tech/core/app_router.dart';
import 'package:khedma_tech/views/chat/chat_screen.dart';
import 'package:khedma_tech/views/chat/widgets/chat_item.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: ListView.separated(
        itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              Navigator.pushNamed(context, ChatScreen.id);
              //GoRouter.of(context).go(AppRouter.chatBody);
            },
              child: ChatItem());
        },
        itemCount: 5, separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 20,);

      },
      ),
    );
  }
}
