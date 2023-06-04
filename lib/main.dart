import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '춘식이',
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
        title: Text('춘식이'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 텍스트의 가로축 정렬 CrossAxisAlignment
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/cc.gif'),
                radius: 60.0,
              ),
            ),
            Divider( // 구분선
              height: 60.0, // 구분선으로부터 위 간격 30 아래 간격 30
              color: Colors.grey[850],
              thickness: 0.5,// 선의 두께
              endIndent: 30.0,
            ),
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
            Text('춘식이',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0, // 글씨 사이즈
                fontWeight: FontWeight.bold // 글씨 굵기
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text('춘식이 POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ) ,
            ),
            SizedBox(
              height: 10.0 ,
            ),
            Text('14',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('using lightsaber',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),
                )
              ],
            ),Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('face hero tattoo',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('fire flames',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/cc2.png'),
                backgroundColor: Colors.amber[800],
                radius: 60.0, // 이미지의 크기
              ),
            ),
          ],
        ),
      ),
    );
  }
}