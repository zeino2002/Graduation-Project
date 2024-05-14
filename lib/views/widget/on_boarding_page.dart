import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String? imageUrl;
  final String? title;

  const OnboardingPage({super.key, this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl!,
          height: 420,
          width: 450,
          // fit: BoxFit.fil,
        ),
        const SizedBox(height: 25.0),
        Text(
          maxLines: 2,
          title!,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
