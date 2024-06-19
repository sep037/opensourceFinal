import 'package:flutter/material.dart';

class HobbyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'This is the Hobby page. Share your hobbies and interests here. \n\n'
          'Hobbies: \n'
          '- Reading \n'
          '- Traveling \n'
          '- Gaming',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
