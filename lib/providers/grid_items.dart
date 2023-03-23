import 'package:flutter/material.dart';
import 'package:soff/models/grid_item.dart';

class GridItems with ChangeNotifier {
  final List<GridItem> list = [
    GridItem(id: "p1", boldTitle: "Summer collection", title: "To lighten your room", imageUrl: "https://raw.githubusercontent.com/Saidikrom/images/Saidikrom/image/images/image0.jpg"),
    GridItem(id: "p1", boldTitle: "Spring sales!", title: "To beautify your space", imageUrl: "https://raw.githubusercontent.com/Saidikrom/images/Saidikrom/image/images/image1.jpg"),
    GridItem(id: "p1", boldTitle: "Student pack", title: "Affordable prices", imageUrl: "https://raw.githubusercontent.com/Saidikrom/images/Saidikrom/image/images/image2.jpg"),
  ];
}
