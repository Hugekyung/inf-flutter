import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse(
    'https://yhchan2000.notion.site/6-9f91306e3f794dd98db109400e9a6b4a?pvs=4');

class HomeScreen2 extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted) // 안드로이드는 자바스크립트 사용에 대한 세팅을 따로 해줘야 된다
    ..loadRequest(homeUrl); // .. 점 두개: 함수를 실행한 대상을 반환하라

  HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Yang'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
