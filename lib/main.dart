import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
        ),
        body: Builder(
          // 기존 Scaffold.of 일 경우에 Builder로 Context를 새로 정의 해줘야했음
          // ScaffoldMessenger.of 가 생긴 뒤로는 필요 없어짐!
          builder: (BuildContext ctx) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(ctx)
                      .showSnackBar(SnackBar(content: Text('Hellow')));
                },
                style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 15, color: Colors.white)),
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                child: Text('Elevated Button'),
              ),
            );
          },
        )
    );
  }
}
