import 'package:flutter/material.dart';

class popularModel {
  String name;
  String category;
  String description;
  String price;
  String image;
  String location;

  popularModel({
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.location,
    required this.image,
  });

  static List<popularModel> getPopularDiets() {
    List<popularModel> popular = [];

    popular.add(
      popularModel(
          name: 'Beef Burger',
          category: 'fast food',
          description: 'fast food within 30 min',
          price: '5000 RWF',
          location: 'Burger Planet',
          image: '../../assets/icons/burger.svg'),
    );

    popular.add(
      popularModel(
          name: 'Margherita Pizza',
          category: 'pizza',
          description: 'Classic Margherita Pizza',
          price: '8000 RWF',
          location: 'Pizza Palace',
          image: '../../assets/icons/pizza.svg'),
    );

    popular.add(
      popularModel(
          name: 'Grilled Salmon',
          category: 'seafood',
          description: 'Fresh Grilled Salmon with Herbs',
          price: '12000 RWF',
          location: 'Seafood Paradise',
          image: '../../assets/icons/burger.svg'),
    );

    popular.add(
      popularModel(
          name: 'Vegetable Stir Fry',
          category: 'vegetarian',
          description: 'Healthy Vegetable Stir Fry',
          price: '6000 RWF',
          location: 'Green Eats',
          image: '../../assets/icons/pizza.svg'),
    );

    popular.add(
      popularModel(
          name: 'Chicken Shawarma',
          category: 'middle eastern',
          description: 'Delicious Chicken Shawarma',
          price: '7000 RWF',
          location: 'Shawarma Express',
          image: '../../assets/icons/burger.svg'),
    );

    return popular;
  }
}
