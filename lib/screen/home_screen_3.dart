import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  Timer? timer;
  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      int currentPage = controller.page!.toInt();
      int nextPage = currentPage + 1;

      if (nextPage > 2) {
        nextPage = 0; // 마지막 페이지일 떄, 첫 번쨰 페이지로 이동
      }

      controller.animateToPage(
        nextPage,
        duration: Duration(milliseconds: 400), // 애니메이션이 동작하는데 소요하는 시간
        curve: Curves.linear, // 애니메이션의 동작 방식
      );
    });
  }

  @override
  void dispose() {
    controller.dispose(); // 메모리 낭비를 위해 삭제
    if (timer != null) {
      timer!
          .cancel(); // App이 dispose될 때, 타이머도 제거(제거하지 않으면 메모리를 계속 사용하게 되어 좋지 않다)
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // 상단 위젯에 있는 '시간', '배터리' 등 UI의 색을 변경

    return Scaffold(
      body: PageView(
          controller: controller,
          children: [1, 2, 4]
              .map((e) =>
                  Image.asset('asset/img/sample_$e.jpeg', fit: BoxFit.cover))
              .toList()),
    );
  }
}
