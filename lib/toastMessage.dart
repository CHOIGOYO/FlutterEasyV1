import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main()=>runApp(ToastMSG());

class ToastMSG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToastMSG',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: MyToastMSG(),
    );
  }
}

class MyToastMSG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('toast message'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.greenAccent) // 버튼 배경
          ),
          onPressed: () {
            // 버튼을 눌렀을 때 실행될 코드
            flutterToast();
          },
          child: Text('Toast'),
        ),
      ),
    );
  }
}
void flutterToast(){
  Fluttertoast.showToast(msg: 'hello flutter',
  gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20.0, // msg 폰트크기
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT ,
  );

}