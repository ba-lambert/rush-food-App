import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/models/article_model.dart';

class ArticleDetails extends StatelessWidget {
  final Article article;
  const ArticleDetails({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150, // Increase the height of the AppBar
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  article.urlToImage,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: const Alignment(0.0, 0.0),
                      colors: <Color>[
                        Colors.black.withAlpha(0),
                        Colors.black12,
                        Colors.black54,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              article.title,
              style: const TextStyle(fontSize: 16),
            ),
            centerTitle: true,
          ), // Dark theme
          elevation: 8, // Shadow
          iconTheme:
              const IconThemeData(color: Colors.white), // Back button color
          actionsIconTheme: const IconThemeData(color: Colors.white),
          systemOverlayStyle: SystemUiOverlayStyle.light, // Action icons color
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 1, bottom: 1),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(5)),
                child: Text(
                  article.source.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Author: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Add your styles here
                        color: Colors.blue, // Add your styles here
                      ),
                    ),
                    TextSpan(
                      text: article.author,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                article.description,
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),
        ));
  }
}
