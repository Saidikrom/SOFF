import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:soff/presentation/home/bottom_bar.dart';
import 'package:soff/presentation/profile/profile_page.dart';
import 'package:soff/providers/profile_images.dart';

import '../../models/profile_image.dart';

class CreateAccount extends StatefulWidget {
  String? number;
  CreateAccount({super.key, this.number});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController name = TextEditingController();
  var ii;

  @override
  Widget build(BuildContext context) {
    final imageUrl = Provider.of<ProfileImages>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Log in",
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Choose avatar",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: imageUrl.list.length,
                itemBuilder: (ctx, i) {
                  return ChangeNotifierProvider<ProfileImage>.value(
                    value: imageUrl.list[i],
                    child: Consumer<ProfileImage>(builder: (ctx, value, child) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {});
                          ii = i;
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(
                            color: Color(0xfff249B69),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(imageUrl.list[i].imgUrl),
                              scale: ii == i ? 2 : 1,
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                }),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Choose avatar",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: 380,
                  height: 56,
                  child: TextFormField(
                    controller: name,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 20),
                      fillColor: const Color(0xffF0F0F0),
                      filled: true,
                      labelText: "Name",
                      floatingLabelStyle: TextStyle(color: Colors.transparent),
                      prefixStyle: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      suffixIconColor: const Color(0xff757A78),
                      hintText: "Name",
                      hintStyle: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff757A78),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 12,
                // ),
                // SizedBox(
                //   width: 380,
                //   height: 56,
                //   child: TextFormField(
                //     // controller: phone,
                //     textInputAction: TextInputAction.search,
                //     decoration: InputDecoration(
                //       contentPadding: const EdgeInsets.only(left: 20),
                //       fillColor: const Color(0xffF0F0F0),
                //       filled: true,
                //       labelText: "Phone number",
                //       floatingLabelStyle: TextStyle(color: Colors.transparent),
                //       prefixStyle: GoogleFonts.roboto(
                //           color: Colors.black,
                //           fontSize: 16,
                //           fontWeight: FontWeight.w400),
                //       suffixIconColor: const Color(0xff757A78),
                //       hintText: "Phone number",
                //       hintStyle: GoogleFonts.roboto(
                //         fontSize: 16,
                //         fontWeight: FontWeight.w400,
                //         color: const Color(0xff757A78),
                //       ),
                //       enabledBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8),
                //         borderSide: const BorderSide(
                //           color: Colors.transparent,
                //         ),
                //       ),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8),
                //         borderSide: const BorderSide(
                //           color: Colors.transparent,
                //           width: 2,
                //         ),
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(8),
                //         borderSide: const BorderSide(
                //           color: Colors.transparent,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext ctx) => CustomBottomAppBar(
                          number: widget.number,
                          name: name.text,
                          image: imageUrl.list[ii].imgUrl,
                          isTrue: true,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff1C1B1F1F).withOpacity(.12),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        "Send",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff1C1B1F),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
