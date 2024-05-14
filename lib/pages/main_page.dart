import 'package:flutter/material.dart';
import 'package:kitob/pages/bottomNavigaion.dart';
import 'package:kitob/pages/home_page.dart';
import 'package:kitob/pages/katalog_page.dart';
import 'package:kitob/pages/profile_page.dart';
import 'package:kitob/pages/savat_page.dart';
import 'package:kitob/pages/sevimlilar_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentPageIndex = 0;

  void _changePage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  List pages = [
    const HomePage(),
    const Katalog(),
    const SavatPage(),
    const SevimlilarPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigation(_currentPageIndex, _changePage),
      body: pages[_currentPageIndex],
    );
  }
}
