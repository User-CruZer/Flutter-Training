import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["John", "Jane", "Doe", "Smith", "Alice", "Bob", "Charlie", "David", "Eve", "Frank"];

  void userTapped() {
    print("User tapped the container!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Welcome", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
          backgroundColor: Colors.orange[600],
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.white,),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.monetization_on, color: Colors.white,))
          ],
        ),
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
              // On tap, user tapped the container
            child: Container(
              height: 300,
              width: 300,
              color: Colors.orange[100],
              child: Center(child: Text("Hello World"),),
            ),
          ),
        )
      ),
    );
  }
}