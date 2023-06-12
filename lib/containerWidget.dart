import 'package:flutter/material.dart';
void main()=>runApp(MyApp123());

class MyApp123 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Container Widget',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: MyPage123(),
    );
  }
}

class MyPage123 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        color: Colors.red, // containers with no children try to be as big as possible
      ),
    );
  }
}