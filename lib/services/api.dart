import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

const String mainUrl = 'https://api.consumet.org/meta/anilist/recent-episodes';

Future<Map<String, List<String>>> getData() async {
  var getRecentAnime = await http.get(Uri.parse(mainUrl));

  if (getRecentAnime.statusCode == 200) {
    var res = convert.jsonDecode(getRecentAnime.body) as Map<String, dynamic>;
    var data = res['results'] as List<dynamic>;
    List<String> AnimeTitle =
        data.map((item) => item['title']['romaji'] as String).toList();
    List<String> AnimeImg =
        data.map((item) => item['image'] as String).toList();
    Map<String, List<String>> animeData = {
      'animeTitle': AnimeTitle,
      'animeImg': AnimeImg,
    };
    print(animeData);
    return animeData;
  } else {
    throw Exception('Failed to Load data');
  }
}
