import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/cart.dart';

class CartItems extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;
  final String manifacture;
  final double price;
  final int quantity;
  const CartItems({
    super.key,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
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
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
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
              // Spacer(),
              Consumer<Cart>(builder: (ctx, value, child) {
                return Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      Container(
                        width: 49,
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
                              child: Text(
                                "-",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
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
                              child: Text(
                                "+",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 135,
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
    );
  }
}
