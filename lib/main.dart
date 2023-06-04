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
        title: Text('First App'), // 앱 내에 appbar의 타이틀로 보여지는 텍스트
      ),
      body: Center( // 중앙 배치
        child: Column( // 세로 배치
          children: [ // [] 내에 세로로 배치될 내용을 넣어주면 된다.
            Text('hello'), // 위젯 간 구분을 위해 쉼표를 넣어줘야한다.
            Text('hello'),
            Text('hello')
          ],
        ),
      ),
    );
  }
}
