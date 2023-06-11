import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart/';

void main()=>runApp(ToastMSGApp());

class ToastMSGApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToastMessage',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyToastMessage(),
    );
  }
}

class MyToastMessage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Message'),
        centerTitle: true,
      ),
      body: Center(),
    );
  }
}