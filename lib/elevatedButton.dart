import 'package:flutter/material.dart';

void main() => runApp(NoBuilderSnackBar());

class NoBuilderSnackBar  extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoBuilderSnackBar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MySnackBarHome(),
    );
  }
}

class MySnackBarHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('No Builder Snack Bar'),
        centerTitle: true,
      ),
      body:MysnackBar(),
    );
  }
}

class MysnackBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          // 버튼을 눌렀을 때 수행될 기능
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('ElevatedButton Pressed',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white
          ),
          ),
            backgroundColor: Colors.blue,
            duration: Duration(milliseconds: 1000),
          ),
          );
        },
        child: Text(
            'Hello ElevatedButton'
        ),
      )
    );
  }
}


