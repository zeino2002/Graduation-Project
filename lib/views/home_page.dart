import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khedma_tech/views/profile/profile.dart';
import 'package:khedma_tech/views/widget/custom_bottom_navigate.dart';

import 'booking/NObooking.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 4;

  final List<Widget> _screens = [
    const Profile(),
    const NoBooking(),
    Home(),
    Home(),
    Home(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              size: 28,
            ),
            label: 'ملفك',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bookBookmark,
              size: 28,
            ),
            label: 'الحجوزات',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.commentDots,
              size: 28,
            ),
            label: 'الدردشه',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.locationDot,
              size: 28,
            ),
            label: 'القريب منك',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              size: 28,
            ),
            label: 'الرئيسيه',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _screens[_currentIndex],
    );
  }
}
