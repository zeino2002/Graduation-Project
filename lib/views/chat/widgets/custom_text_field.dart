import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          bottom: 24.0
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    hintText: 'اكتب رسالتك',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color(0xff0B60B0)
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color(0xff0B60B0)
                      )
                    ),
                    suffixIcon: const Icon(
                      Icons.mic,
                      color: Colors.blueAccent,
                      size: 30,
                    )
                  ),
                ),
              ),
            ),
            const SizedBox(width: 6,),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueAccent,
              child: IconButton(
                icon: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
