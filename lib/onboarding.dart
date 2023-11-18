import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:practice_code/main.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome to my app',
          body: 'This is the first page',
          image: Image.asset('image/page1.png'),
          decoration: getPageDecoration()
        ),
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is the second page'
                'We are making on-boarding screens'
                'It is very interesting!',
            image: Image.asset('image/page2.png'),
            decoration: getPageDecoration()
        ),
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is the third page'
                'We are making on-boarding screens'
                'It is very interesting!',
            image: Image.asset('image/page3.png'),
            decoration: getPageDecoration()
        ),
      ],
      done: const Text('done'), // 마지막페이지까지 봤을때 어떤것을 보여줄지
      onDone: (){ // 마지막에 어떤 액션을 진행시킬지
        // push -> pushReplacement 앱바 뒤로가기 화살표 제거
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MyPage()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,       // 마지막 페이지로 스킵하는 기능 활성화 여부
      skip: const Text('skip'),   // 뷰 요소
      dotsDecorator: DotsDecorator(   // PageViewModel 위치를 나타내는 dot 데코
        color: Colors.cyan,
        size: const Size(10,10),  // dot size 지정
        activeSize: const Size(22, 10), // 활성화 dot 사이즈
        activeShape: RoundedRectangleBorder(  // 활성화 dot 외각 라인
          borderRadius: BorderRadius.circular(24)
        ),
        activeColor: Colors.purple, // 활성화 dot 컬러 설정
      ),
      curve: Curves.bounceOut,  // 애니메이션 설정
    );
  }

  PageDecoration getPageDecoration(){
    return const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold
      ),
      bodyTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.blue
      ),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Colors.orange
    );
  }
}
