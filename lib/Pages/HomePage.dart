import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: Text("Home Page", style: TextStyle(color: Colors.white),),
      //   ),
      body: ListView(children: [

        // 1st Row
        Text("This is the Home Page", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black), textAlign: TextAlign.center,),
        Container(
              height: 350,
              color: Colors.orange[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.discord, size: 130, color: Colors.blue, shadows: [BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4)],),
                  Text("Discord", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                ],
              ),
            ),

        // 2nd Row
        Container(
          height: 350,
          color: Colors.orange[300],
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook, size: 130, color: Colors.blue, shadows: [BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4)],),
                  Text("Facebook", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)
                ],
              ),
        ),
        Container(
          height: 350,
          color: Colors.orange[500],
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.tiktok, size: 130, color: Colors.black, shadows: [BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4)],),
                  Text("TikTok", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)
                ],
              ),
        )
      ],),
      // bottomNavigationBar: BottomNavigationBar(
      //   // backgroundColor: Colors.blue,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: "Settings",
      //     ),
      //   ],
      // ),
    );
  }
}