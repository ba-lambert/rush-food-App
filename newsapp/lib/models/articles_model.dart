import 'package:newsapp/models/source_model.dart';

class Article {
  Source source;
  String? title;
  String? content;
  String? description;
  String? author;
  String? url;
  String? urlToImage;
  String? publishedAt;
  Article({
    required this.source,
    this.title,
    this.content,
    this.description,
    this.author,
    this.url,
    this.urlToImage,
    this.publishedAt,
  });
  factory Article.fromJson(Map<List, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      content: json['content'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publishedAt: json['publishedAt'] as String,
    );
  }
}
