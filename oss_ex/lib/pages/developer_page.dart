import 'dart:async';
import 'package:flutter/material.dart';

class DeveloperPage extends StatefulWidget {
  @override
  _DeveloperPageState createState() => _DeveloperPageState();
}

class _DeveloperPageState extends State<DeveloperPage> {
  double _position = 0.0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      setState(() {
        _position = _position == 0.0 ? -20.0 : 20.0;  // 좌우로 움직이는 범위 설정
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '! iOS Developer !',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: double.infinity,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  transform: Matrix4.translationValues(_position, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/apple 복사본.png',
                      
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '저는 지금 프론트엔드 개발자가 되기 위해 노력을 하고 있습니다. '
                '제가 프론트엔드로 입문을 하게 된 이유는 최종 목표가 iOS 앱 개발자가 되는 것이기 때문이에요.\n\n'
                '제가 단지 iOS 개발자가 되어보기로 한 이유는 간단한데요, '
                '그저 애플 기기들을 어렸을 때부터 사용했기 때문이에요. '
                '그러다 대학을 컴퓨터 관련 학과로 진학하게 되면서, 일찍부터 확정하게 되었습니다.\n\n'
                '현재는 최종 목표를 정해두고 이것 저것 해보면서 지내고 있어요. '
                '학기가 끝나고 방학 때는 본격적으로 swift에 정진해보려고 해요!',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
