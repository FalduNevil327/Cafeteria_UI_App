import 'package:cafeapplication/giftpage.dart';
import 'package:cafeapplication/secondscreen.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'first_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    List<Widget> screen = [
      FirstScreen(),
      SecondScreen(),
      GiftPage(),
      SecondScreen(),
    ];
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: FloatingNavbar(
          borderRadius: 20,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.menu_book_outlined, title: 'Menu'),
          FloatingNavbarItem(
              icon: Icons.wallet_giftcard_rounded, title: 'Gift'),
          FloatingNavbarItem(icon: Icons.person, title: 'User'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: screen.elementAt(_selectedIndex),
      ),
    ));
  }
}
