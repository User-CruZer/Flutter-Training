import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Second_Pages.dart';

class FirstPages extends StatelessWidget {
  const FirstPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("First Page", style: TextStyle(color: Colors.white),),
        ),
      body: Center(child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text("Go To The Second Page", style: TextStyle(color: Colors.white),),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPages()));
        },
      )),
    );
  }
}