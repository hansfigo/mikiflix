import 'package:flutter/material.dart';
import 'package:mikiflix/pages/recent_relase.dart';
import '../services/api.dart';
import '../widgets/anime_card.dart';
import '../styles/fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  static final List<Widget> _listPage = <Widget>[];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(style: TextStyles.title, widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: RecentRelase(),
        ),
      ),
    );
  }
}

