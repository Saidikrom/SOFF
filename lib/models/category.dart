import 'package:flutter/material.dart';

class Category with ChangeNotifier {
  final String id;
  final String type;
  bool isActive;

  Category({
    required this.id,
    required this.type,
    this.isActive = false,
  });

    void toggleActive() {
    isActive = !isActive;
    notifyListeners();
  }
}
