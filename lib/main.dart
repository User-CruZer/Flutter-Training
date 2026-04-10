import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["John", "Jane", "Doe", "Smith", "Alice", "Bob", "Charlie", "David", "Eve", "Frank"];

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
        body: Stack(children: [
          // Background container
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.orange[600],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
            ),
          ),
          // List of names
          ListView.builder(
            padding: EdgeInsets.only(top: 20),
            itemCount: names.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange[600],
                  child: Text(names[index][0], style: TextStyle(color: Colors.white),),
                ),
                title: Text(names[index], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                subtitle: Text("Subtitle for ${names[index]}"),
                trailing: Icon(Icons.arrow_forward_ios, size: 16,),
              );
            },
          ),
          // Floating action button
          Positioned(bottom: 20, right: 20, child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.orange[600],
            child: Icon(Icons.add, color: Colors.white,),
          ),)
        ],)
      ),
    );
  }
}