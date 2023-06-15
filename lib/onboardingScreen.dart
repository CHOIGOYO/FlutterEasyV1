import 'package:flutter/material.dart';

import 'onBoardingPage.dart';

void main() => runApp(const MyApp12344());

class MyApp12344 extends StatelessWidget {
  const MyApp12344({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(), // home: app이 처음 실행될 때 보여질 화면을 지정
    );
  }
}

class MyPage12344 extends StatelessWidget {
  const MyPage12344({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainPage'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Main Screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Go to OnBoarding Screen'),
            )
          ],
        ),
      ),
    );
  }
}
