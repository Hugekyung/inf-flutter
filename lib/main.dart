import 'package:flutter/material.dart';
import 'package:test_project/screen/home_screen_3.dart';

void main() {
  // Flutter 프레임워크가 실행할 준비가 될때까지 기다린다
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen3(),
    ),
  );
}
