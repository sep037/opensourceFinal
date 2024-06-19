import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:english_words/english_words.dart';
import '../state_management.dart';

class LikePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var currentWord = WordPair.random();

    return Scaffold(
      appBar: AppBar(
        title: Text('Likes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '22_32207352_박승은',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            currentWord.asLowerCase,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              appState.toggleLike(currentWord.asLowerCase);
            },
            child: appState.likes.contains(currentWord.asLowerCase)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
          ),
          Expanded(
            child: ListView(
              children: [
                for (var item in appState.likes)
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text(item),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
