import 'package:flutter/material.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          children: [1, 2, 4]
              .map((e) =>
                  Image.asset('asset/img/sample_$e.jpeg', fit: BoxFit.cover))
              .toList()),
    );
  }
}
