import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state_management.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var textController = TextEditingController();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Favorites',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          height: 300,
          child: PageView(
            children: [
              Image.asset('assets/images/스크린샷 2024-06-19 01.53.35.png'),
              Image.asset('assets/images/스크린샷 2024-06-19 01.54.03.png'),
              Image.asset('assets/images/스크린샷 2024-06-19 01.54.27.png'),
              Image.asset('assets/images/스크린샷 2024-06-19 01.54.12.png'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    hintText: 'Add a new favorite',
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  if (textController.text.isNotEmpty) {
                    appState.addFavorite(textController.text);
                    textController.clear();
                  }
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              for (var item in appState.favorites)
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text(item),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
