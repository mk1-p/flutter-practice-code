import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar Without Builder',
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
        title: Text('Toast message'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () { flutterToast(); },
          child: Text('Toast'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue
          ),
        ),
      ),
    );
  }
}

void flutterToast() {
  print('Toast BTN Clicked!');
  Fluttertoast.showToast(msg: 'Flutter',
    gravity:ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT
  );
}
