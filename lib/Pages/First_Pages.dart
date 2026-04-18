import 'package:flutter/material.dart';

class FirstPages extends StatelessWidget {
  const FirstPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("First Page", style: TextStyle(color: Colors.white),),
        ),
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/homepage");
                },
                leading: Icon(Icons.home, color: Colors.blue,),
                title: Text("Home"),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/settings");
                },
                leading: Icon(Icons.settings, color: Colors.blue,),
                title: Text("Settings"),
              ),
            ],
          ),
          Center(child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text("Go To The Second Page", style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.pushNamed(context, "/second");
            },
          ))
        ],
      ),
      
      drawer: Drawer(
        backgroundColor: Colors.blueAccent,
        child: Column(
          children: [
            // Common Place for Drawer Header
            DrawerHeader(child: Icon(
                Icons.account_box,
                size: 100, color: Colors.white,
              ),
            ),
            // List of Drawer Items

            // Home ListTile
            ListTile(
              leading: Icon(  
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              title: Text("H O M E", style: TextStyle(color: Colors.white)
              ),
              onTap: () {
                // Go To Home Page
                Navigator.pop(context); // Close the drawer

                Navigator.pushNamed(context, "/homepage");
              },
            ),

            // Settings ListTile
            ListTile(
              leading: Icon(  
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
              title: Text("S E T T I N G S", style: TextStyle(color: Colors.white)
              ),
              onTap: () {
                // Go To Settings Page
                Navigator.pop(context); // Close the drawer

                Navigator.pushNamed(context, "/settings");
              },
            ),
          ],
        ),
      ),
    );
  }
}