import 'package:flutter/material.dart';

void main()=>runApp(AppBarIcon());

class AppBarIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppBar Icon',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Mypage(),
    );
  }
}

class Mypage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text('AppBar Icon Menu'),
        leading:IconButton( // 간단한 위젯이나 아이콘을 왼쪽에 위치시킬 수 있다 - leading
          icon: Icon(Icons.menu), onPressed: () {
            print('menu button is clicked');
        },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart), onPressed: () {
            print('shopping_cart button is clicked');
          },
          ),
          IconButton(
            icon: Icon(Icons.search), onPressed: () {
            print('search button is clicked');
          },
          ),
        ],
      ),
    );
  }
}