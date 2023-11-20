import 'package:flutter/material.dart';
import 'package:practice_code/responsive/desktop_body.dart';
import 'package:practice_code/responsive/mobile_body.dart';
import 'package:practice_code/responsive/responsive_layout.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
