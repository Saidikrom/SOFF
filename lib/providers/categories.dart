import 'package:flutter/material.dart';

import '../models/category.dart';

class Categories with ChangeNotifier {
  final List<Category> list = [
    Category(id: "c1", type: "Chair"),
    Category(id: "c2", type: "Sofa"),
    Category(id: "c3", type: "Bed"),
    Category(id: "c4", type: "Desk"),
    Category(id: "c5", type: "Bookcase"),
  ];

}
