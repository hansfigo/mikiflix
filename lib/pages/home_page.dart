import 'package:flutter/material.dart';
import '../services/api.dart';
import '../widgets/anime_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  Map<String, List<String>> animeInfo = snapshot.data!;
                  List<String> animeTitle = animeInfo['animeTitle']!;
                  List<String> animeImg = animeInfo['animeImg']!;
                  return Expanded(
                    child: ListView.builder(  
                      itemCount: animeTitle.length,
                      itemBuilder: (context, index) {
                        return AnimeCard(image: animeImg[index], title: animeTitle[index],);
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Failed to load data: ${snapshot.error}',
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
