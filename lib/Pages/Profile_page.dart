import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: Text("Profile Page", style: TextStyle(color: Colors.white)),
      // ),
      body: Container(
        child: Text("This is the Profile Page", style: TextStyle(fontSize: 24),),
      ),
    );
  }
}