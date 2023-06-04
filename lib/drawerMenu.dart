import 'package:flutter/material.dart';
void main()=> runApp(DrawerMenu());

class DrawerMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Menu', // 앱의 총칭
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Mypage1(),
    );
  }
}

class Mypage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Drawer Menu'),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart),onPressed: (){
            print('shopping_cart button is clicked');
          }
          ),IconButton(icon: Icon(Icons.search),onPressed: (){
            print('search button is clicked');
          }
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/cc2.png'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('choigoyo'),
              accountEmail: Text('choigoyo.q7@gmail.com'),
              onDetailsPressed: (){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
/*
* 
* */