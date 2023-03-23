import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:soff/models/category.dart';
import 'package:soff/providers/products.dart';

import '../../providers/categories.dart';

class CategoriesPart extends StatefulWidget {
  const CategoriesPart({super.key});

  @override
  State<CategoriesPart> createState() => _CategoriesPartState();
}

class _CategoriesPartState extends State<CategoriesPart> {
  int iss = 0;
  @override
  Widget build(BuildContext context) {
    final categoriesData = Provider.of<Categories>(context);
    final productData = Provider.of<Products>(context);
    final categories = categoriesData.list;
    final products = productData.list;
    return Container(
      color: Colors.white,
      height: 33,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (ctx, i) {
            return ChangeNotifierProvider<Category>.value(
              value: categories[i],
              child: Consumer<Category>(builder: (ctx, value, child) {
                return GestureDetector(
                  onTap: () {
                    categories[i].toggleActive();
                    setState(() {
                      iss = i;
                    });
                  },
                  child: Container(
                    width: 82,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          categories[i].type,
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 82,
                          height: 2,
                          color: iss == i
                              ? const Color(0xff249B69)
                              : Color(0xffEEEEEE),
                        )
                      ],
                    ),
                  ),
                );
              }),
            );
          }),
    );
  }
}
