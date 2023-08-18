import 'package:flutter/material.dart';
import 'package:practice_code/ScreenA.dart';
import 'package:practice_code/ScreenB.dart';
import 'package:practice_code/ScreenC.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // In MaterialApp >>
    // initialRoute 멀티 페이지 중 처음 열릴 Route Page.
    // > 멀티 페이지 사용시에는 initialRoute 를 사용함
    // > home 과 initialRoute 를 함께 사용하면 에러 발생!
    // routes = const <String, WidgetBuilder>{}
    // > 이동할 페이지들의 이름을 지정하고 생성하는 역할
    // > Map 자료형 구조
    return MaterialApp(
      // home: ScreenA(),
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC()
      },
    );
  }
}

