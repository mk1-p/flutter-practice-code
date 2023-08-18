import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                child: Text('Go to ScreenB'),
                onPressed: (){
                  Navigator.pushNamed(context, '/b');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
                ),
            ),
            ElevatedButton(
              child: Text('Go to ScreenC'),
              onPressed: (){
                Navigator.pushNamed(context, '/c');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
              ),
            )
          ],
        ),
      ),
    );
  }
}
