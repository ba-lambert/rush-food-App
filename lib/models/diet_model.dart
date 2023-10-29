import 'package:flutter/material.dart';

class DietModel {
  String name;
  String category;
  String date;
  Color box;
  String icon;
  String duration;
  bool viewIsSelected;

  DietModel(
      {required this.name,
      required this.category,
      required this.date,
      required this.box,
      required this.icon,
      required this.duration,
      required this.viewIsSelected});

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(DietModel(
      name: 'Breakfast',
      category: 'Healthy',
      date: '2023-10-30',
      box: Colors.blue,
      icon: '../../assets/icons/breakfast.svg',
      duration: '1 hours',
      viewIsSelected: true,
    ));

    diets.add(DietModel(
      name: 'Lunch',
      category: 'Balanced',
      date: '2023-10-31',
      box: Colors.green,
      icon: '../../assets/icons/noodle.svg',
      duration: '2 hours',
      viewIsSelected: false,
    ));

    diets.add(DietModel(
      name: 'Dinner',
      category: 'Vegan',
      date: '2023-11-01',
      box: Colors.red,
      icon: '../../assets/icons/dinner.svg',
      duration: '45 minutes',
      viewIsSelected: false,
    ));

    return diets;
  }
}
