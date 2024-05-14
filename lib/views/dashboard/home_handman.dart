import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khedma_tech/views/chat/chat_list_screen.dart';
import 'package:khedma_tech/views/chat/chat_screen.dart';
import 'package:khedma_tech/views/contactus/contactus.dart';
import 'package:khedma_tech/views/contactus/privecy.dart';
import 'package:khedma_tech/views/widget/custom_bottom_navigate.dart';
import 'package:khedma_tech/views/dashboard/widget/custom_homeHandMan.dart';

import '../booking/NObooking.dart';
import '../home.dart';
import '../profile/profile.dart';

class HomePageHandMan extends StatefulWidget {
  const HomePageHandMan({super.key});

  @override
  State<HomePageHandMan> createState() => _HomePageHandManState();
}

class _HomePageHandManState extends State<HomePageHandMan> {
  int _currentIndex = 5;

  final List<Widget> _screens = [
    const Profile(),
    const NoBooking(),
    const ChatListView(),
    const HomeHandMan(),
    const Privecy(),
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
              Icons.control_point_duplicate,
              size: 28,
            ),
            label: 'لوحة التحكم',
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
