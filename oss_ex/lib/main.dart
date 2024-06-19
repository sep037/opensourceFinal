import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'state_management.dart';
import 'pages/like_page.dart'; // LikePage import
import 'pages/favorites_page.dart'; // FavoritesPage import
import 'pages/about_page.dart';
import 'pages/contact_page.dart';
import 'pages/developer_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'My Introduction App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(120, 47, 75, 1)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = AboutPage();
        break;
      case 1:
        page = LikePage(); // LikePage로 수정합니다.
        break;
      case 2:
        page = FavoritesPage(); // FavoritesPage를 추가합니다.
        break;
      case 3:
        page = ContactPage();
        break;
      case 4:
        page = DeveloperPage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.info),
                      label: Text('About'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.favorite),
                      label: Text('Likes'), // 좋아요 페이지를 위한 네비게이션 버튼을 추가합니다.
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.list),
                      label: Text('Favorites'), // Favorites 페이지를 위한 네비게이션 버튼을 추가합니다.
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.contact_mail),
                      label: Text('Contact'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.developer_mode),
                      label: Text('Developer'),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
