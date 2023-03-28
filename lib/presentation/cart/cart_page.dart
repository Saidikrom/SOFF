import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/cart.dart';
import 'cart_items.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static const routName = "/cart";

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    print(cart.items.isEmpty);
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  "Cart",
                  style: GoogleFonts.roboto(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              cart.items.isEmpty
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 250,
                        ),
                        Text(
                          "Empty yet",
                          style: GoogleFonts.roboto(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff323834)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Browse products and add them to cart",
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff757A78),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 40,
                          width: 114,
                          decoration: BoxDecoration(
                            color: const Color(
                              0xff249B69,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Browse",
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  : Expanded(
                      child: Consumer<Cart>(builder: (ctx, value, child) {
                        return ListView.builder(
                          itemCount: cart.items.length,
                          itemBuilder: (ctx, i) {
                            final cartItem = cart.items.values.toList()[i];
                            return CartItems(
                              id: cart.items.keys.toList()[i],
                              title: cartItem.title,
                              manifacture: cartItem.manufacturer,
                              quantity: cartItem.quality,
                              price: cartItem.price,
                              imageUrl: cartItem.image,
                            );
                          },
                        );
                      }),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
