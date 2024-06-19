import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool _showText = false;

  void _toggleText() {
    setState(() {
      _showText = !_showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _toggleText,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  width: _showText ? 130 : 250,
                  height: _showText ? 130 : 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/스크린샷 2024-06-18 03.07.50.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              AnimatedOpacity(
                duration: Duration(milliseconds: 300),
                opacity: _showText ? 1.0 : 0.0,
                child: Column(
                  children: [
                    Text(
                      '나 박승은 !',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '2001.03.07. '
                      '\n'
                      '단국대학교 소프트웨어학과'
                      '\n\n\n'
                      '제가 들어온 저의 첫인상은 차가운 모습이 다분하다는 것인데요,\n'
                      '하지만 친해지면 상대방을 항상 행복하게 할 수 있는 능력을 가지고 있는 것 같습니다.\n'
                      '제가 생각해도 전 웃기기 때문이에요. ^^ \n\n'
                      'MBTI는 ENFP로, 모든 사람을 편하게 해줄 수 있는 것 같습니다.\n'
                      '근데 말이 조금 많은 편인 것 같아 시끄러운 것 같아요.\n'
                      '그치만 거슬릴 정도는 아니랍니다!\n\n'
                      '성격은 꼼꼼하지 못 하지만,\n'
                      '욕심이 많아 원하는 것이 생기면 항상 쟁취하려고 하는 편이에요.\n'
                      '그래서 제가 얻어낸 결과물이 조금 있는 편입니다.\n'
                      '저라는 사람을 짧게 설명 해보았어요.\n'
                      '텍스트로 담아내기엔 조금 어려운 것 같아요 . . 이 내용도!',
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
