import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../Constants/constants.dart';
import '../../Model/video.dart';


class Api {
  Future<List<Video>> pesquisar(String pesquisa ) async {
    var caminho = "/youtube/v3/search";

    var parametro = {
      "part": "snippet",
      "key": "$CHAVE_YOUTUBE_API", //queryParameters
      "channelId": "$ID_CANAL_OBRA",
      "order": "date",
      "type": "video",
      "q": pesquisa,
      "maxResults" : "20"

    };

    var url = Uri.https(URL_BASE, caminho, parametro);
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);

      List <Video> videos = dadosJson["items"].map<Video>(
              (map){
            return Video.fromJson(map);
          }
      ).toList();

      return videos;


    } else {
    }

    return pesquisar(pesquisa);
  }


}

