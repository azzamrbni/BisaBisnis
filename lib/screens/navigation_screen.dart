import 'package:bisabisnis/pages/investor_page.dart';
import 'package:bisabisnis/pages/profile_page.dart';
import 'package:bisabisnis/screens/allcourse_screen.dart';
import 'package:bisabisnis/screens/chat_screen.dart';
import 'package:bisabisnis/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    AllcourseScreen(),
    InvestorPage(),
    ChatScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white12,
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.montserrat(
          color: Colors.white,
        ),
        unselectedLabelStyle: GoogleFonts.montserrat(
          color: Colors.white,
        ),
        selectedFontSize: 11,
        unselectedFontSize: 11,
        iconSize: 26,
        selectedItemColor: Color.fromARGB(255, 83, 120, 240),
        unselectedItemColor: Colors.white54,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined), label: 'Kelas'),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on_outlined), label: 'Investor'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: 'Profile'),
        ],
      ),
    );
  }
}
