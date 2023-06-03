import 'package:flutter/material.dart'; // 플러터 프레임워크 기본 위젯 디자인 테마 요소를 사용하기 위해 import

// app 의 시작점
void main() => runApp(MyApp());
// 최상위 위젯이 될 MyApp Stateless Widgets

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      theme: ThemeData( // ThemeData - 기본적인 디자인 테마 지정
        primarySwatch:  Colors.blue // primarySwatch 색상견본
      ),
    home: MyHomePage() , // app이 정상적으로 실행되었을 때 가장 먼저 보여주는 경로
    );
  }
}

