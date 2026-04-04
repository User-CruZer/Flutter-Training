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
        appBar: AppBar(
          title: Text("Welcome", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
          backgroundColor: Colors.black,
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.white,),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.monetization_on, color: Colors.white,))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // 1st Row
            Expanded(
              child: Container(
                color: Colors.orange[100],
              ),
            ),

            // 2nd Row
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.orange[300],
              ),
            ),
            // 3rd Row
            Expanded(
              child: Container(
                color: Colors.orange[500],
              ),
            )
          ],
        ),
      ),
    );
  }
}