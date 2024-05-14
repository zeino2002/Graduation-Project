import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:khedma_tech/splash_view.dart';
import 'package:khedma_tech/views/chat/chat_screen.dart';
import 'package:khedma_tech/views/home_view.dart';
import 'package:khedma_tech/views/notification/notification_view.dart';
import 'core/app_router.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const KhedmaTech());
}

class KhedmaTech extends StatelessWidget {
  const KhedmaTech({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routerConfig: AppRouter.router,
      theme: ThemeData(fontFamily: 'Almarai'),
      routes: {
        ChatScreen.id: (context) => const ChatScreen(),
        HomeView.id: (context) => const HomeView(),
        NotificationView.id: (context) => const NotificationView(),
      },
      home: const SplashView(),
    );
  }
}
