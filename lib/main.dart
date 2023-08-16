import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row & Column',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          // 세로 축 관여
          // verticalDirection: VerticalDirection.up,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 균일하게 등분하여 배치
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,   // 공간 사이에 배치
          // mainAxisAlignment: MainAxisAlignment.center, // 세로축 정렬
          // mainAxisSize: MainAxisSize.min, // 세로축의 최소 영역을 가짐
          // crossAxisAlignment: CrossAxisAlignment.end, // 끝점으로 정렬
          crossAxisAlignment: CrossAxisAlignment.stretch, // 가로방향으로 꽉 채워라
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Contaner 1'),
            ),
            SizedBox(
              width: 30.0,
              // height: 30.0,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Contaner 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Contaner 3'),
            ),
            // Container(
            //   width: double.infinity,
            //   height: 100,
            // )
          ],
        ),
      ),
    );
  }
}
