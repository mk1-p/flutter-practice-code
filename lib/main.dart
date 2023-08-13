import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,    // 디버그 태그 이미지 제거
      title: 'BBANTO',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('BBANTO'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,  // 중앙 정렬 여부
        elevation: 0.0,     // AppBar 단차 효과 정도를 나타냄
      ),
      body: Padding(  // Padding Widget 설정
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0), //가장자리의 상하좌우 패딩
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,   // 가로 시작점 정렬
          children: <Widget>[
            Center(
              child: CircleAvatar(    // 원형 위젯
                backgroundImage: AssetImage('assets/drink_ghost.gif'),
                radius: 60.0,
              ),
            ),
            Divider(          // 구분 선
              height: 60.0,   // divider 위,아래의 간격을 나타냄!
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text('NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0    // 자간
              ),
            ),
            SizedBox(       // 박스간 간격
              height: 10.0,
            ),
            Text('BBANTO',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold   // 폰트 굵기
              ),
            ),
            SizedBox(       // 박스간 간격
              height: 30.0,
            ),
            Text('BBANTO POWER LEVEL',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0    // 자간
              ),
            ),
            SizedBox(       // 박스간 간격
              height: 10.0,
            ),
            Text('14',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold   // 폰트 굵기
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(    // 가로로 나열할때 사용하는 위젯
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('using lightsaber',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            ),
            Row(    // 가로로 나열할때 사용하는 위젯
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('face hero tattoo',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                )
              ],
            ),
            Row(    // 가로로 나열할때 사용하는 위젯
              children: <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('fire flames',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                )
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/common_ghost.png'),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}


// 사용 이미지 출처!
// <a href="https://www.flaticon.com/kr/free-icons/" title="유령 아이콘">유령 아이콘  제작자: Freepik - Flaticon</a>
// <a href="https://www.flaticon.com/kr/free-icons/" title="유령 아이콘">유령 아이콘  제작자: Smashicons - Flaticon</a>
// <a href="https://pixabay.com/ko//?utm_source=link-attribution&utm_medium=referral&utm_campaign=animation&utm_content=4384">Pixabay</a>에서 <a href="https://pixabay.com/ko/users/aysugok90-21940915/?utm_source=link-attribution&utm_medium=referral&utm_campaign=animation&utm_content=4384">Aysu gök</a>님이 제공한 GIF