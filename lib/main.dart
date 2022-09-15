import 'package:flutter/material.dart';
import 'package:moviez/interface/pages/home_page.dart';
import 'package:moviez/interface/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Avenir'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/search': (context) => const SearchPage(),
      },
    );
  }
}
