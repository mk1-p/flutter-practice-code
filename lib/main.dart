import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter 2.0 buttons',
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // print('[Text Button] on press button');
              },
              onLongPress: () {
                print('[Text Button] long press test button');
              },
              child: Text(
                'Text button',
                style: TextStyle(fontSize: 20.0),
              ),
              style: TextButton.styleFrom(
                primary: Colors.red,
                // backgroundColor: Colors.blue
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('[Text Button] on press button');
              },
              child: Text('Elevate button'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                      // 버튼의 모양 커스텀
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0 // 배경과의 높이 차이 커스텀
                  ),
            ),
            OutlinedButton(
              onPressed: () {
                print('[OutlinedButton]');
              },
              child: Text('Outlined Button'),
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                side: BorderSide(
                  color: Colors.black87,  // 외각선 색상
                  width: 2.0              // 외각성 두께
                )
              ),
            ),
            TextButton.icon(
              onPressed: (){
                print('Icon Button');
              },
              icon: Icon(           // 버튼 앞 아이콘 추가
                Icons.home,
                size: 30.0,
                // color: Colors.black87,
              ),
              label: Text('Go to Home'),
              style: TextButton.styleFrom(
                primary: Colors.purple    // 아이콘 색상을 지정하지 않으면 함께 적용됨
              ),
            ),
            ElevatedButton.icon(
              // onPressed: () {
              //   print('[Text Button] on press button');
              // },
              onPressed: null,    // 버튼 비활성화 시 null
              icon: Icon(
                Icons.home,
                size: 20,
              ),
              label: Text('Elevate button'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black87,
                  onSurface: Colors.pink,          // 비활성화 버튼 색상
                  // minimumSize: Size(200, 50),   // 버튼 크기 지정
              ),
            ),
            ButtonBar(    // 버튼 가로 정렬에 사용 됨, 가로길이가 부족하다면 세로로 배열해줌
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20.0),
              children: [
                TextButton(
                    onPressed: (){
                      
                    }, 
                    child: Text('TextButton')
                ),
                ElevatedButton(
                    onPressed: (){

                    },
                    child: Text('ElevatedButton'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
