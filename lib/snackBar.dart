import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      debugShowCheckedModeBanner: false, // Debug 삭제
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          // flutter 2.0 부터 FlatButton x -> TextButton 으로 사용
          onPressed: () {
            // 버튼을 눌렀을 때 수행될 문장
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('hello')));
          }, // Respond to button press
          child: Text('show me'),
          style: TextButton.styleFrom(primary: Colors.red),
        ),
      ),
    );
  }
}
