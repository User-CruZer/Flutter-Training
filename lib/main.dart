import "package:flutter/material.dart";
import "package:flutter_application_1/Pages/First_Pages.dart";
import "package:flutter_application_1/Pages/Second_Pages.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPages(),
      routes: {
        "/first": (context) => FirstPages(),
        "/second": (context) => SecondPages(),
      },
    );
  }
}