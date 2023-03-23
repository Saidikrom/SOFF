import 'package:flutter/material.dart';

class GridItem with ChangeNotifier{
  final String id;
  final String boldTitle;
  final String title;
  final String imageUrl;

  GridItem({
    required this.id,
    required this.boldTitle,
    required this.title,
    required this.imageUrl,
  });
}
