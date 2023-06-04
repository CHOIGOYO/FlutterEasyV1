import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BBANTO',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('BBANTO'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 텍스트의 가로축 정렬 CrossAxisAlignment
          children: [
            Text('NAME',
            style: TextStyle(
              color: Colors.white, // 글자 색상
              letterSpacing: 2.0, // 글자 간격
            ) ,
            ),
            SizedBox( // 보이지않지만, 두 텍스트 사이에 간격을 조절할 수 있음
              height: 10.0 , // 박스의 높이
              // width: , 박스의 가로 길이
            ),
            Text('BBANTO',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0, // 글씨 사이즈
                fontWeight: FontWeight.bold // 글씨 굵기
              ),
            )
          ],
        ),
      ),
    );
  }
}