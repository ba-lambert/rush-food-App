import 'dart:convert';

import 'package:http/http.dart';
import 'package:newsapp/models/articles_model.dart';

class ApiService {
  final url =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=1132a1705cc04a2bbd7678af04e5da69";

  Future<List<Article>> getArticles() async {
    Response res = await get(url as Uri);
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw "Artcles can't fetched correctly";
    }
  }
}
