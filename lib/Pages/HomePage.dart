import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home Page", style: TextStyle(color: Colors.white),),
        ),
      body: Center(child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text("Go To The First Page", style: TextStyle(color: Colors.white),),
        onPressed: () {
          Navigator.pushNamed(context, "/first");
        },
      )),
    );
  }
}