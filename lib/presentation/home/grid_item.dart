import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/grid_item.dart';
import '../../providers/grid_items.dart';
import 'grid_element.dart';

class GridItemss extends StatelessWidget {
  const GridItemss({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final gridData = Provider.of<GridItems>(context);
    final grid = gridData.list;
    return SizedBox(
      height: 210,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16, right: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          childAspectRatio: .6,
          crossAxisCount: 1,
        ),
        itemBuilder: (ctx, i) {
          return ChangeNotifierProvider<GridItem>.value(
            value: grid[i],
            child: const GridElement(),
          );
        },
      ),
    );
  }
}
