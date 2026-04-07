import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Welcome", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
          backgroundColor: Colors.orange[600],
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.white,),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.monetization_on, color: Colors.white,))
          ],
        ),
        body: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // scrollDirection: Axis.horizontal,
          children: [
            // 1st Row
            Container(
              height: 350,
              color: Colors.orange[100],
              child: Icon(Icons.discord, size: 130, color: Colors.blue, shadows: [BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4)],),
            ),

            // 2nd Row
            Container(
              height: 350,
              color: Colors.orange[300],
              child: Icon(Icons.facebook, size: 130, color: Colors.blue, shadows: [BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4)],),
            ),

            // 3rd Row
            Container(
              height: 350,
              color: Colors.orange[500],
              child: Icon(Icons.tiktok, size: 130, color: Colors.black, shadows: [BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4)],),
            )
          ],
        ),
      ),
    );
  }
}