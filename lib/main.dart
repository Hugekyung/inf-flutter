import 'package:flutter/material.dart';
import 'package:test_project/screen/home_screen.dart';
import 'package:test_project/screen/home_screen_2.dart';
import 'package:test_project/screen/test_wedget.dart';

void main() {
  // Flutter 프레임워크가 실행할 준비가 될때까지 기다린다
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen2(),
    ),
  );
}
