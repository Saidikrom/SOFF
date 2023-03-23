import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:soff/providers/products.dart';
import 'package:svg_icon/svg_icon.dart';

import '../../../providers/cart.dart';
import '../bottom_bar.dart';
import 'about_product.dart';

class ProductItemPage extends StatefulWidget {
  const ProductItemPage({super.key});
  static const routName = "/Detail";

  @override
  State<ProductItemPage> createState() => _ProductItemPageState();
}

class _ProductItemPageState extends State<ProductItemPage> {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments;
    final cart = Provider.of<Cart>(context, listen: false);
    final products = Provider.of<Products>(context, listen: false)
        .findId(productId.toString());
    // print(cart.items['p1']!.quality);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 530,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(products.imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 20,
                                offset:
                                    Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            size: 32,
                          ),
                        ),
                      ),
                      Consumer<Products>(
                        builder: (ctx, value, child) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {});
                              products.toggleFavorite();
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 20,
                                    offset: Offset(
                                        0, 0), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Icon(
                                products.isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: products.isFavorite
                                    ? Colors.red
                                    : const Color(0xff757A78),
                                size: 32,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$${products.price}",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "${products.title}",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${products.description}",
                    style: GoogleFonts.roboto(
                      color: const Color(0xff323834),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "About this product",
                    style: GoogleFonts.roboto(
                      color: const Color(0xff757A78),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AboutProduct(
                    details: products.color,
                    text: "Color:",
                  ),
                  AboutProduct(
                    details: products.manufacturer,
                    text: "Brand:",
                  ),
                  AboutProduct(
                    details: products.size,
                    text: "Product dimensions:",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 7,
        elevation: 0,
        child: Container(
          height: 64,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 182,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Color(0xff249B69),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SvgIcon(
                        "assets/icons/cube_icon.svg",
                        color: Color(0xff249B69),
                        height: 18,
                        width: 18,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "View in AR mode",
                        style: GoogleFonts.roboto(
                          color: const Color(0xff249B69),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Consumer<Cart>(builder: (ctx, value, child) {
                return GestureDetector(
                  onTap: () {
                    setState(() {});
                    cart.addToCart(
                      products.id,
                      products.title,
                      products.imgUrl,
                      products.price,
                      products.manufacturer,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CustomBottomAppBar(
                          sentIndex: 2,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 182,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff249B69),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        "Add to cart",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}