import 'dart:convert';
import 'package:http/http.dart';
import 'package:news_app/models/article_model.dart';

class ApiService {
  final endpoint =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=1132a1705cc04a2bbd7678af04e5da69";

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(endpoint));
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw "can't fetch articles";
    }
  }
}
