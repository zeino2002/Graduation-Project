import 'package:flutter/material.dart';
import 'package:khedma_tech/core/assets.dart';
import 'package:khedma_tech/core/reusable/text_style_helper.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Column(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.blueAccent,
              child: Text(
                  '2',
                style: AppTextStyleHelper.font14w400White,
              ),
            ),
            Text(
                'Time',
              style: AppTextStyleHelper.font14w400Black,

            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          width: MediaQuery.sizeOf(context).width - 200,
          height: 70,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 8),
              Text(
                'User Name',
                style: AppTextStyleHelper.font16w400Black,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              SizedBox(height: 8),
              Text(
                'Message body',
                style: AppTextStyleHelper.font12w400Black,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                AssetsData.chatPic,
              ),
              fit: BoxFit.cover
            ),
          ),
        ),
      ],
    );
  }
}
