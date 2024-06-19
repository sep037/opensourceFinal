import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contact Me',
            style: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email, color: Colors.black, size: 40,),
              SizedBox(width: 10),
              Text('tmddms0307@dankook.ac.kr'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.camera_alt, color: Colors.black, size: 40), // Instagram 아이콘
              SizedBox(width: 10),
              Text('se_p037', style: TextStyle(fontSize: 18)), // 인스타그램 아이디
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.code, color: Colors.black, size: 40), // GitHub 아이콘
              SizedBox(width: 10),
              Text('sep037', style: TextStyle(fontSize: 18)), // 깃허브 아이디
            ],
          ),
        ],
      ),
    );
  }
}
