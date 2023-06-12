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
      body: SafeArea( // 화면에 맞춤
        child: Container(
          color: Colors.red, // containers with no children try to be as big as possible
          width: 100, // 컨테이너 내 크기를 지정
          height: 100,
          // margin: EdgeInsets.all(20), // 마진 값을 상하좌우 20씩 줌
          margin: EdgeInsets.symmetric( // x,y 값을 주어 마진을 준다
            vertical: 80,
            horizontal: 20
          ),
          padding: EdgeInsets.all(25),
          child: Text('hello'), // 컨테이너는 자식을 가지게되면 크기가 자식 사이즈로 작아진다.
        ),
      ),
    );
  }
}