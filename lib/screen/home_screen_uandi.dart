import 'package:flutter/cupertino.dart';
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
          bottom: false,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                _TopPart(),
                _BottomPart(),
              ],
            ),
          ),
        ));
  }
}

class _TopPart extends StatelessWidget {
  const _TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'U&I',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'single',
              fontSize: 100.0,
            ),
          ),
          Column(
            children: [
              Text(
                '우리 처음 만난 날',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'single',
                  fontSize: 50.0,
                ),
              ),
              Text(
                '2022.12.10',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'dongle',
                    fontSize: 35.0,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          IconButton(
            iconSize: 60.0,
            onPressed: () {
              showCupertinoDialog(
                context: context,
                barrierDismissible: true, // 바깥을 터치하면 dialog가 제거됨
                builder: (BuildContext context) {
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white,
                      height: 300,
                      // Align 위젯이 없을 경우, 어떤 기준으로 정렬을 해야할지 몰라 높이에 관계없이 전체 화면을 덮어버린다.
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        onDateTimeChanged: (DateTime date) {
                          print(date);
                        },
                      ),
                    ),
                  );
                },
              );
            },
            icon: Icon(
              Icons.favorite,
              color: Colors.pink[300],
            ),
          ),
          Text(
            'D+1',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'dongle',
                fontSize: 70.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'asset/img/mountain.jpg',
      ),
    );
  }
}
