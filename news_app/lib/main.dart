import 'package:flutter/material.dart';
import 'package:news_app/screens/HomePage.dart'; // Replace with the correct path to your HomePage file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black12,
      ),
      home: HomePage(),
    );
  }
}
