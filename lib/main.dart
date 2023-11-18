import 'package:flutter/material.dart';

import 'onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingPage(),
    );
  }
}


class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main page'), // 2.5 이후부터 static 요소에는 const 타입을 입력해주도록 함
                                        // 플러터가 실행될때 const 요소는 다시 만들어내는것이 아닌 재사용하도록 힌트
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Main Screen',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>
                    const OnBoardingPage()),
                  );
                },
                child: const Text('Go to onboarding screen'),
            )
          ],
        ),
      ),
    );
  }
}
