import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/product.dart';
import '../../providers/products.dart';
import 'grid_products_item.dart';

class GridProduct extends StatelessWidget {
  final bool showFavorites;
  GridProduct({
    super.key,
    required this.showFavorites,
  });

  @override
  Widget build(BuildContext context) {
    final gridData = Provider.of<Products>(context);
    final griditem = showFavorites ? gridData.favorites : gridData.list;
    return GridView.builder(
      shrinkWrap: true,
      itemCount: griditem.length,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(left: 16, right: 16),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: .55,
        crossAxisCount: 2,
      ),
      itemBuilder: (ctx, i) {
        return ChangeNotifierProvider<Product>.value(
          value: griditem[i],
          child: GridProductItem(i: i),
        );
      },
    );
  }
}
