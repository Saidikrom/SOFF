// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:soff/presentation/cart/cart_page.dart';
import 'package:svg_icon/svg_icon.dart';

import '../../providers/cart.dart';
import '../favorites/favorites_page.dart';
import '../profile/profile_page.dart';
import 'home_page.dart';

class CustomBottomAppBar extends StatefulWidget {
  final bool isTrue;
  int? sentIndex;
  String? name;
  String? number;
  String? image;
  CustomBottomAppBar(
      {Key? key,
      this.sentIndex,
      this.name,
      this.number,
      required this.isTrue,
      this.image})
      : super(key: key);
  static const routName = "/bottom";
  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);

    final pages = [
      HomePage(),
      FavoritesPage(),
      CartPage(),
      widget.isTrue
          ? ProfilePage(
              isTrue: widget.isTrue,
              image: widget.image,
              name: widget.name,
              number: widget.number,
            )
          : ProfilePage(isTrue: false)
    ];

    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          widget.sentIndex == 0
              ? pages[0]
              : widget.sentIndex == 1
                  ? pages[1]
                  : widget.sentIndex == 2
                      ? pages[2]
                      : widget.sentIndex == 3
                          ? pages[3]
                          : pages[0],
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 7,
        elevation: 0,
        child: Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.sentIndex = 0;
                  });
                },
                child: SizedBox(
                  height: 60,
                  width: 61,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // widget.sentIndex == 0 || widget.sentIndex == null
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 64,
                            height: 32,
                            decoration: BoxDecoration(
                              color: widget.sentIndex == 0 ||
                                      widget.sentIndex == null
                                  ? Color(0xFFEEEEEE)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: SvgIcon(
                              widget.sentIndex == 0 || widget.sentIndex == null
                                  ? "assets/icons/home_fill_icon.svg"
                                  : "assets/icons/home_outless_icon.svg",
                              color: widget.sentIndex == 0 ||
                                      widget.sentIndex == null
                                  ? Colors.black
                                  : const Color(
                                      (0xff757A78),
                                    ),
                            ),
                          ),
                        ],
                      ),
                      // : SvgIcon(
                      //     "assets/icons/home_outless_icon.svg",
                      //     height: 20,
                      //     width: 20,
                      //     color: widget.sentIndex == 0 ||
                      //             widget.sentIndex == null
                      //         ? Colors.black
                      //         : const Color(
                      //             (0xff757A78),
                      //           ),
                      //   ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Home",
                        style: GoogleFonts.roboto(
                          color:
                              widget.sentIndex == 0 || widget.sentIndex == null
                                  ? Colors.black
                                  : const Color(
                                      (0xff757A78),
                                    ),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.sentIndex = 1;
                  });
                },
                child: SizedBox(
                  height: 60,
                  width: 61,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // widget.sentIndex == 1
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 64,
                            height: 32,
                            decoration: BoxDecoration(
                              color: widget.sentIndex == 1
                                  ? Color(0xFFEEEEEE)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: SvgIcon(
                              widget.sentIndex == 1
                                  ? "assets/icons/favorite_fill_icon.svg"
                                  : "assets/icons/favorite_icon.svg",
                              color: widget.sentIndex != 1
                                  ? Color(0xff757A78)
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Favorite",
                        style: GoogleFonts.roboto(
                          color: widget.sentIndex != 1
                              ? Color(0xff757A78)
                              : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.sentIndex = 2;
                  });
                },
                child: SizedBox(
                  height: 60,
                  width: 65,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 64,
                            height: 32,
                            decoration: BoxDecoration(
                              color: widget.sentIndex == 2
                                  ? Color(0xFFEEEEEE)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 40,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgIcon(
                                  widget.sentIndex == 2
                                      ? "assets/icons/cart_fill_icon.svg"
                                      : "assets/icons/cart_icon.svg",
                                  height: 20,
                                  width: 20,
                                  color: widget.sentIndex != 2
                                      ? Color(0xff757A78)
                                      : Colors.black,
                                ),
                                Positioned(
                                  bottom: 14,
                                  left: 20,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 16,
                                    width: 16,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff249B69),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      cart.items.length.toString(),
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
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
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Cart",
                        style: GoogleFonts.roboto(
                          color: widget.sentIndex != 2
                              ? Color(0xff757A78)
                              : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.sentIndex = 3;
                  });
                },
                child: SizedBox(
                  height: 60,
                  width: 61,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 64,
                            height: 32,
                            decoration: BoxDecoration(
                              color: widget.sentIndex == 3
                                  ? Color(0xFFEEEEEE)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: SvgIcon(
                              widget.sentIndex == 3
                                  ? "assets/icons/person_fill_icon.svg"
                                  : "assets/icons/person_icon.svg",
                              color: widget.sentIndex != 3
                                  ? Color(0xff757A78)
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Profile",
                        style: GoogleFonts.roboto(
                          color: widget.sentIndex != 3
                              ? Color(0xff757A78)
                              : Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
