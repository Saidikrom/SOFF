import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:soff/presentation/home/carousel_slider.dart';
import 'package:soff/presentation/home/grid_item.dart';

import '../../providers/categories.dart';
import '../../providers/products.dart';
import 'categories_part.dart';
import 'grid_products.dart';
import 'search_part.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();
  static const routName = "/home";
  @override
  Widget build(BuildContext context) {
    final gridData = Provider.of<Products>(context);
    gridData.fetchProducts();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              toolbarHeight: 0,
              automaticallyImplyLeading: false,
              pinned: true,
              backgroundColor: Colors.white,
              // title: SearchPart(search: search),
              title: Container(
                color: Colors.red,
              ),
              // title: Text(
              //   "SOFF",
              //   style: TextStyle(color: Colors.black, fontSize: 24),
              // ),
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(40),
                child: CategoriesPart(),
              ),
              expandedHeight: 340,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // GridItemss(),
                      CarouselSliderW()
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 70),
                child: GridProduct(
                  showFavorites: false,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
