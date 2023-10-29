import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String icon;
  Color color;
  CategoryModel({required this.name, required this.icon, required this.color});
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    categories.add(
      CategoryModel(
        name: 'Cake',
        icon: '../../assets/icons/cake.svg',
        color: Color(0xff92A3FD),
      ),
    );
    categories.add(
      CategoryModel(
        name: 'Samosa',
        icon: '../../assets/icons/cake1.svg',
        color: Color.fromARGB(255, 146, 253, 208),
      ),
    );
    categories.add(
      CategoryModel(
        name: 'Bread',
        icon: '../../assets/icons/biscuit.svg',
        color: Color.fromARGB(255, 253, 146, 248),
      ),
    );
    return categories;
  }
}
