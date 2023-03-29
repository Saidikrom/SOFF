import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:svg_icon/svg_icon.dart';

import '../../models/product.dart';
import 'product item page/product_item_page.dart';

class GridProductItem extends StatelessWidget {
  final int i;
  const GridProductItem({
    super.key,
    required this.i,
  });

  @override
  Widget build(BuildContext context) {
    final gridItem = Provider.of<Product>(context, listen: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductItemPage.routName,
              arguments: {"gridItem": gridItem.id, "i": i},
            );
            // print(i);
            // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx)=>ProductItemPage(i: i, productId: gridItem.id,));
          },
          child: Container(
            width: 186,
            height: 240,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(
                  gridItem.imgUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Consumer<Product>(builder: (ctx, value, child) {
                  return Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        gridItem.toggleFavorite();
                      },
                      icon: Icon(
                        gridItem.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: gridItem.isFavorite
                            ? Colors.red
                            : const Color(0xffBCBCBC),
                      ),
                    ),
                  );
                }),
                const SizedBox(
                  height: 140,
                ),
                gridItem.isAR
                    ? Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(13),
                            child: SvgIcon(
                              "assets/icons/cube_icon.svg",
                              color: Color(0xff249B69),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          gridItem.title,
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                gridItem.manufacturer,
                style: GoogleFonts.roboto(
                  color: Color(0xff757A78),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "\$${gridItem.price}",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

