import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile'),
      ),
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        children: [
          // 화면 공간
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 300,
              color: Colors.deepPurple[400],
            ),
          ),
          // Column은 자식 Height에 어떤 제약 조건을 두지 않기 때문에
          // 리스트뷰가 세로방향으로 가능한 모든 공간을 차지하기 때문에 플러터에서는 계산하지 못하여 에러 발생
          Expanded( // Expanded 현재 가용 가능한 범위내에서 차지하도록
            // 추천 영상 공간
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.deepPurple[300],
                      height: 120,
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
