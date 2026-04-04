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
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          title: Text("Welcome", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.brown[400],
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.monetization_on))
          ],
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              // Curve the corners a bit
              borderRadius: BorderRadius.circular(35)
            ),
            padding: EdgeInsets.all(50),
            child: Icon(Icons.discord, color: Colors.blueAccent, size: 102,),
          ),
        ),
      ),
    );
  }
}