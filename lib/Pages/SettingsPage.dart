import 'package:flutter/material.dart';

class Settingspage extends StatelessWidget {
  const Settingspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: Text("Settings Page", style: TextStyle(color: Colors.white)),
      // ),
      body: Text("This is the Settings Page", style: TextStyle(fontSize: 24),),
      // bottomNavigationBar: BottomNavigationBar(
      //   // backgroundColor: Colors.blue,
      //   items: [
      //     // Home
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

      //     // Settings
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: "Settings",
      //     ),

      //     // Account
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_box),
      //       label: "Account",
      //     ),
      //   ],
      // ),
    );
  }
}
