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
            UserAccountsDrawerHeader( // 계정
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/cc2.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [ // 다른 계정
                CircleAvatar(
                  backgroundImage: AssetImage('assets/poo.jpeg'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/poo.jpeg'),
                //   backgroundColor: Colors.white,
                // )
              ],
              accountName: Text('choigoyo'),
              accountEmail: Text('choigoyo.q7@gmail.com'),
              onDetailsPressed: (){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only( //  박스의 모서리를 변경하기위해 사용되었고, only를 사용하면 왼쪽과 오른쪽을 개별적으로 설정할 수 있다.
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, // 좌측 아이콘
              color: Colors.grey[850],),
              title: Text('Home'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add), // 우측에 아이콘
            ),
            ListTile(
              leading: Icon(Icons.settings, // 좌측 아이콘
                color: Colors.grey[850],),
              title: Text('settings'),
              onTap: (){
                print('settings is clicked');
              },
              trailing: Icon(Icons.add), // 우측에 아이콘
            ),
            ListTile(
              leading: Icon(Icons.question_answer, // 좌측 아이콘
                color: Colors.grey[850],),
              title: Text('QnA'),
              onTap: (){
                print('Qna is clicked');
              },
              trailing: Icon(Icons.add), // 우측에 아이콘
            ),
          ],
        ),
      ),
    );
  }
}
