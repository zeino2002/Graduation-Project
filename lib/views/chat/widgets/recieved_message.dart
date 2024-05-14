import 'package:flutter/material.dart';
import 'package:khedma_tech/core/reusable/text_style_helper.dart';

class RecevierMessage extends StatelessWidget {
  const RecevierMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Spacer(),
        Container(
          padding: const EdgeInsets.only(top: 16,left: 16,right: 16,bottom: 8),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.sizeOf(context).width * 0.75,
          ),
          decoration: const BoxDecoration(
            color: Color(0xffE5F0FF),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(21),
              //topRight: Radius.circular(21),
              topLeft: Radius.circular(21),
              bottomLeft: Radius.circular(21),
            ),
          ),
          child: const Column(
            children: [
              Text(
                'رساله رايحه ',
                style: AppTextStyleHelper.font14w400Black,

              ),
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(bottom: 10.0),
        //   child: Transform.rotate(
        //     angle: 250,
        //     alignment: Alignment.bottomRight,
        //     transformHitTests: false,
        //     child: CustomPaint(
        //       painter: TrianglePainter(
        //           //color: Color(0xffE5F0FF),
        //         color: Colors.black
        //       ),
        //       size: const Size(10, 12),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}