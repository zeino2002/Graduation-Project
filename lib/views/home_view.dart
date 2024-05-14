import 'package:flutter/material.dart';
import 'package:khedma_tech/views/on_boarding.dart';

class HomeView extends StatelessWidget {
  static const String id = '/name';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: OnboardingScreen(),
      ),
    );
  }
}
