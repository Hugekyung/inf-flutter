import 'package:flutter/material.dart';

class HomeScreenUandI extends StatefulWidget {
  const HomeScreenUandI({super.key});

  @override
  State<HomeScreenUandI> createState() => _HomeScreenUandIState();
}

class _HomeScreenUandIState extends State<HomeScreenUandI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
      children: [
            Text('U&I'),
            Text('우리 처음 만난 날'),
            Text('2022.12.10'),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
              ),
            ),
            Text('D+1'),
      ],
    ),
          ),
        ));
  }
}
