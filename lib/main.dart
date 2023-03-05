import 'package:flutter/material.dart';
import './pages/home_page.dart';
import 'styles/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      home: const MyHomePage(title: 'MikiFlix'),
    );
  }
}

