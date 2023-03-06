import 'package:flutter/material.dart';

import '../services/api.dart';
import '../widgets/anime_card.dart';

class RecentRelase extends StatelessWidget {
  const RecentRelase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Map<String, List<String>> animeInfo = snapshot.data!;
              List<String> animeTitle = animeInfo['animeTitle']!;
              List<String> animeImg = animeInfo['animeImg']!;
              return SizedBox(
                height: 800,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 0.55,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4),
                  itemCount: animeImg.length,
                  itemBuilder: (context, index) {
                    return AnimeCard(
                        title: animeTitle[index], image: animeImg[index]);
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
        ),
      ],
    );
  }
}
