import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator Example',
      home: FirstPage(),
    );
  }
}


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the Second page'),
          onPressed: () {
            // push에 context 가 포함되는 이유는 현재 위치를 정확히 알기 위해서!
            Navigator.push(context, MaterialPageRoute(
                // 어떤 페이지가 Build 되는지 정의, require!
                builder: (context) => SecondPage()
                // 안드로이드는 페이지 이동시 페이드인, 페이드아웃이 기본
                // ios는 좌우로 이동되는 애니메이션이 기본
              )
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to the First page'),
          onPressed: () {
            // 현재 가장 위에 있는 세컨 페이지 위젯을 제거
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}

