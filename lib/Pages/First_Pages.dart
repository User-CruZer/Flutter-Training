import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/HomePage.dart';
import 'package:flutter_application_1/Pages/SettingsPage.dart';
import 'package:flutter_application_1/Pages/Profile_page.dart';

class FirstPages extends StatefulWidget {
  FirstPages({super.key});

  @override
  State<FirstPages> createState() => _FirstPagesState();
}

class _FirstPagesState extends State<FirstPages> {
  // current index for the bottom navigation bar
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index; // Update the current index
    });
  }

  final List _pages = [
    // Homepage
    Homepage(),

    // Profile 
    ProfilePage(),

    // Settings 
    Settingspage(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("First Page", style: TextStyle(color: Colors.white)),),
      body: _pages[_currentIndex], // Display the current page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        // backgroundColor: Colors.blue,
        items: [
          // Home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile",
          ),

          // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
