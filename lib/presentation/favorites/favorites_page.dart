import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:svg_icon/svg_icon.dart';

import '../../providers/products.dart';
import '../home/grid_products.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gridData = Provider.of<Products>(context);
    final griditem = gridData.favorites;
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  "Favorite",
                  style: GoogleFonts.roboto(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              griditem.isEmpty
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 300,
                        ),
                        Text(
                          "No favorites",
                          style: GoogleFonts.roboto(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff323834)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "You can add by clicking ",
                              style: GoogleFonts.roboto(
                                color: const Color(0xff757A78),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SvgIcon("assets/icons/favorite_icon.svg",
                                height: 20,
                                width: 20,
                                color: Color(0xff757A78)),
                            Text(
                              " on products",
                              style: GoogleFonts.roboto(
                                color: const Color(0xff757A78),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : GridProduct(
                      showFavorites: true,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
