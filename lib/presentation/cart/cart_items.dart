import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/cart.dart';
import '../home/product item page/product_item_page.dart';

class CartItems extends StatelessWidget {
  final String id;
  final int i;
  final String imageUrl;
  final String title;
  final String manifacture;
  final double price;
  final int quantity;
  const CartItems({
    super.key,
    required this.i,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.manifacture,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        width: 380,
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  ProductItemPage.routName,
                  arguments: {"gridItem": id, "i": i},
                );
              },
              child: Container(
                width: 100,
                height: 130,
                decoration: BoxDecoration(
                  // color: Colors.green,
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              ProductItemPage.routName,
                              arguments: {"gridItem": id, "i": i},
                            );
                          },
                          child: SizedBox(
                            width: 224,
                            child: Text(
                              title,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff323834),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                        GestureDetector(
                          onTap: () {
                            cart.removeItem(id);
                          },
                          child: const Icon(
                            Icons.close,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      manifacture,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff757A78),
                      ),
                    ),
                  ],
                ),
                Consumer<Cart>(builder: (ctx, value, child) {
                  return SizedBox(
                    width: 240,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  cart.removeSingleItem(id);
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
                                quantity.toString(),
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  cart.addToCart(
                                      id, title, imageUrl, price, manifacture);
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
                        Text(
                          "\$${price * quantity}",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
