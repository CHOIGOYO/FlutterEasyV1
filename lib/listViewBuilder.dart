import 'package:flutter/material.dart';

void main() => runApp(const MyApp12345555());

class MyApp12345555 extends StatelessWidget {
  const MyApp12345555({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State createState() => _ListviewPageState();
}

class _ListviewPageState extends State {
  // 리스트 뷰에서 사용할 3개의 데이터 리스트 생성
  var titleList = ['데이터 사이언티스트', '행동 심리학자', '중학교 교사', '풍경 사진작가', '음악 프로듀서', '치과 의사'];
  var imgList = ['image/31.png', 'image/36.png', 'image/42.png', 'image/46.png', 'image/51.png', 'image/59.png'];
  var description = [
    '안녕하세요. 저는 깊이있는 통계학적 지식과 다양한 프로그래밍 능력을 바탕으로, 복잡한 문제를 해결하는데 재능이 있는 데이터 사이언티스트입니다.',
    '안녕하세요. 저는 사람들의 행동과 결정 과정을 이해하는데 전문가인 행동 심리학자입니다.',
    '안녕하세요. 저는 학생들이 자신의 잠재력을 최대한 발휘할 수 있도록 지도하고 독려하는 중학교 교사입니다. ',
    '안녕하세요. 저는 자연의 아름다움을 포착하고 공유하는 것에 탁월한 능력을 가진 풍경 사진작가입니다. ',
    '안녕하세요. 저는 아티스트의 창의적 비전을 최상의 오디오 표현으로 전환하는 것에 능숙한 음악 프로듀서입니다.',
    '안녕하세요. 저는 환자들의 구강 건강을 유지하고 개선하는데 전문가인 치과 의사입니다. ',
  ];

  // 리스트를 클릭했을 때 팝업창이 뜨도록 메서드 작성
  void showPopup(context, title, image, description) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 380,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  ClipRRect(
                    // 이미지를 사각형으로 출력해주는 위젯
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      image,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton.icon(onPressed: () {
                    Navigator.pop(context);
                  },
                    icon: const Icon(Icons.close),
                    label: const Text("close"),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // 가로 모드일 때 디바이스의 크기를 가져와 화면의 60퍼센트를 차지하도록
    double width = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            // 제스처 기능 추가 (리스트 클릭하면 팝업창 뜨게끔)
            onTap: () {
              debugPrint(titleList[index]);
              showPopup(context, titleList[index], imgList[index], description[index]);
            }, // 어떤 기능을 추가할지
            child: Card(
              child: Row(
                children: [
                  SizedBox(width: 100, height: 100, child: Image.asset(imgList[index])),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            titleList[index],
                            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            // 가로&세로 일정한 비율로 보이도록 반응형으로 만든다.
                            width: width, //  다비이스의 가로 크기
                            child: Text(
                              description[index],
                              style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
