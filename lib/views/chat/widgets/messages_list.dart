import 'package:flutter/material.dart';
import 'package:khedma_tech/views/chat/widgets/recieved_message.dart';
import 'package:khedma_tech/views/chat/widgets/send_message.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 24),
      child: ListView.separated(
        itemBuilder: (context, index){
          if(index % 2 == 0){
            return const SendMessage();
          }
          return const RecevierMessage();
        },
        separatorBuilder: (context, index){
          return const SizedBox(height: 16,);
        },
        itemCount: 20,
      ),
    );
  }
}
