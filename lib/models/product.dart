import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String rating;
  final String description;
  final String manufacturer;
  final String size;
  final List list;
  final String type;
  final String upholsteryMaterial;
  final String crossMaterial;
  final String color;
  final String maximumLoad;
  final String imgUrl;
  final double price;
  final String arUrl;
  bool isFavorite;
  final bool isAR;

  Product({
    required this.list,
    required this.id,
    required this.title,
    required this.rating,
    required this.description,
    required this.color,
    required this.manufacturer,
    required this.upholsteryMaterial,
    required this.type,
    required this.crossMaterial,
    required this.size,
    required this.maximumLoad,
    required this.price,
    required this.imgUrl,
    required this.isAR,
    required this.arUrl,
    this.isFavorite = false,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
