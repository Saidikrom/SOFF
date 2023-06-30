import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:svg_icon/svg_icon.dart';

import '../../../providers/cart.dart';
import '../../../providers/products.dart';
import '../../AR screen/ar_screen.dart';
import '../bottom_bar.dart';

class CBottomAppBar extends StatelessWidget {
  final String productId;
  final int i;
  CBottomAppBar({super.key, required this.i, required this.productId});
  var isCart = false;
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    final products = Provider.of<Products>(context, listen: false)
        .findId(productId.toString());
    print(cart.items.values.toList()[i]);
    return Container(
      height: 64,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          products.isAR
              ? GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ARViewScreen(link: products.arUrl),
                      ),
                    );
                  },
                  child: Container(
                    width: 182,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: const Color(0xff249B69),
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
                )
              : SizedBox(),
          isCart
              ? Consumer<Cart>(builder: (ctx, value, child) {
                  final cartItem = value.items.values.toList()[0];
                  print(i);
                  return Row(
                    children: [
                      Container(
                        width: 69,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                cart.removeSingleItem(
                                    cart.items.keys.toList()[0]);
                              },
                              child: Container(
                                height: 25,
                                width: 20,
                                color: Colors.transparent,
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              cartItem.quality.toString(),
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                cart.addToCart(
                                    cart.items.keys.toList()[i],
                                    cartItem.title,
                                    cartItem.image,
                                    cartItem.price,
                                    cartItem.manufacturer);
                              },
                              child: Container(
                                height: 25,
                                width: 20,
                                color: Colors.transparent,
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CustomBottomAppBar(
                                isTrue: false,
                                sentIndex: 3,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xff249B69),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Cart",
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                                width: 40,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const SvgIcon("assets/icons/cart_icon.svg",
                                        height: 20,
                                        width: 20,
                                        color: Colors.white),
                                    Positioned(
                                      bottom: 14,
                                      left: 20,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 16,
                                        width: 16,
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                          cart.items.length.toString(),
                                          style: GoogleFonts.roboto(
                                              color: Color(0xff249B69),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                })
              : Consumer<Cart>(
                  builder: (ctx, value, child) {
                    final cartItem = cart.items.values.toList()[0];
                    return GestureDetector(
                      onTap: () {
                        isCart = true;
                        cart.addToCart(
                            cart.items.keys.toList()[0],
                            cartItem.title,
                            cartItem.image,
                            cartItem.price,
                            cartItem.manufacturer);
                      },
                      child: Container(
                        width: products.isAR ? 182 : 370,
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
                  },
                ),
        ],
      ),
    );
  }
}
