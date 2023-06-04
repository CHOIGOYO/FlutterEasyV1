import 'package:flutter/material.dart'; // 플러터 프레임워크 기본 위젯 디자인 테마 요소를 사용하기 위해 import

// app 의 시작점
void main() => runApp(MyApp());
// 최상위 위젯이 될 MyApp Stateless Widgets

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App', // 앱을 총칭하는 이름
      theme: ThemeData( // ThemeData - 기본적인 디자인 테마 지정
        primarySwatch:  Colors.blue // primarySwatch 색상견본
      ),
    home: MyHomePage() , // app이 정상적으로 실행되었을 때 가장 먼저 보여주는 경로  MyHomePage은 커스텀 위젯
    );
  }
}


// 커스텀 위젯을 만들때 stateless or stateful 위젯으로 만들지 먼저 생각해야한다.
// 첫번째 실습으로 간단한 문자출력 앱을 만들것 -> Stateless 위젯으로 실습
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'), // App Bar의 표시되는 타이틀
        centerTitle: true, // 타이틀 중앙 정렬
        backgroundColor: Colors.redAccent, // App Bar의 색상 지정
        elevation: 0.0, // App Bar 높이 지정(그림자 사라짐)
      ),
      body: Center( // 컬럼 위젯을 가로축으로 정렬 하려면 Center 위젯이 필요하고, 세로축으로 정렬 하려면 mainAxisAlignment 이 필요하다.
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center, // 컬럼은 세로 정렬만 하지만 mainAxisAlignment 은 앱 스크린 내에서 세로축으로 상단 하단등을 정렬할 때 쓰인다.
            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ],
          ),
      ),
    );
  }
}
