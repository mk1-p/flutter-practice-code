import 'package:flutter/material.dart';
import 'package:practice_code/media_query_sample.dart';

import 'mypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // textTheme: TextTheme(
        //   bodyMedium: TextStyle(
        //     fontSize: 30,
        //     color: Colors.white,
        //   ),
        // ),
      ),
      home: MyPage(),
    );
  }
}
