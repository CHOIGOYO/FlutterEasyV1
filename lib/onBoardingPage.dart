import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'onboardingScreen.dart'; // introduction_screen import

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      /*
      * OnBoardingScreen 은 여러 page로 이루어져 있기 때문에 리스트의 형식을 사용하게 됨*/
      pages: [
        PageViewModel(title: 'Welcome to my app ', image:Image.asset('image/free-icon-fox-3969784.png') ,
            decoration: getPageDecotation(),body: '1 page 아이콘 제작자: Freepik - Flaticon'),
        PageViewModel(title: 'Welcome to my app ', image:Image.asset('image/free-icon-lion-3969803.png') ,
            decoration: getPageDecotation(),body: '2 page 아이콘 제작자: Freepik - Flaticon'),
        PageViewModel(title: 'Welcome to my app ', image:Image.asset('image/free-icon-pig-3969799.png') ,
            decoration: getPageDecotation(), body: '3 page 아이콘 제작자: Freepik - Flaticon'),
        PageViewModel(title: 'Welcome to my app ', image:Image.asset('image/free-icon-sheep-3969801.png') ,
            decoration: getPageDecotation(), body: '4 page 아이콘 제작자: Freepik - Flaticon'),
      ],
      done: const Text('done'),
      onDone: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const MyPage12344()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
    );
  }


  PageDecoration getPageDecotation(){
    return PageDecoration(
      pageColor: Colors.pink[100],
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 20,
        color: Colors.blue,
      ),

      imagePadding: EdgeInsets.only(top: 40),
    );
  }
}
