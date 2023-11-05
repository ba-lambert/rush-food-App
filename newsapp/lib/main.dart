import 'package:flutter/material.dart';
import 'package:your_app/home_page.dart'; // Replace with the correct path to your HomePage file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
