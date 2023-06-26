// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:soff/presentation/cart/cart_page.dart';

import '../../providers/cart.dart';
import '../favorites/favorites_page.dart';
import '../profile/profile_page.dart';
import 'home_page.dart';
import 'search_list.dart';

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
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    final cart = Provider.of<Cart>(context);

    final pages = [
      HomePage(),
      FavoritesPage(),
      SearchList(),
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
        alignment: Alignment.bottomCenter,
        children: [
          widget.sentIndex == 0
              ? pages[0]
              : widget.sentIndex == 1
                  ? pages[1]
                  : widget.sentIndex == 2
                      ? pages[2]
                      : widget.sentIndex == 3
                          ? pages[3]
                          : widget.sentIndex == 4
                              ? pages[4]
                              : pages[0],
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            height: 75,
            width: w,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
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
                    child: SvgPicture.asset(
                      "assets/icons/home_fill_icon.svg",
                      color: widget.sentIndex == 0 || widget.sentIndex == null
                          ? Color(0xff249B69)
                          : Colors.white,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.sentIndex = 1;
                      });
                    },
                    child: SvgPicture.asset(
                      widget.sentIndex == 1
                          ? "assets/icons/favorite_fill_icon.svg"
                          : "assets/icons/favorite_icon.svg",
                      color: widget.sentIndex == 1
                          ? Color(0xff249B69)
                          : Colors.white,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.sentIndex = 2;
                      });
                    },
                    child: SvgPicture.asset(
                      "assets/icons/search.svg",
                      width: 30,
                      height: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.sentIndex = 3;
                      });
                    },
                    child: SvgPicture.asset(
                      widget.sentIndex == 3
                          ? "assets/icons/cart_fill_icon.svg"
                          : "assets/icons/cart_icon.svg",
                      color: widget.sentIndex == 3
                          ? Color(0xff249B69)
                          : Colors.white,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.sentIndex = 4;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: widget.sentIndex == 4
                              ? Color(0xFFB3FF38)
                              : Colors.transparent,
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                      child: Image.network(
                        "https://raw.githubusercontent.com/Saidikrom/images/Saidikrom/image/profile%20image/2.png",
                      ),
                      width: 32,
                      height: 32,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
