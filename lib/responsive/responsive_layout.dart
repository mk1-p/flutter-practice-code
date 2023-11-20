import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.mobileBody, required this.desktopBody});

  final Widget mobileBody;
  final Widget desktopBody;

  @override
  Widget build(BuildContext context) {
    // 위젯의 크기에 따라서 빌드
    // 1. 위젯이 처음 배치될 때
    // 2. 부모 위젯이 다른 레이아웃 조건을 전달할 때
    // 3. 부모 위젯이 해당 위젯을 업데이트할 때 또는 빌더 메서드가 구독하고있는 디펜던시가 변할 경우
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth < 800){
        return mobileBody;
      }else{
        return desktopBody;
      }
    });
  }
}
