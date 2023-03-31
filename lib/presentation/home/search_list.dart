import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../models/product.dart';

class SearchList extends StatefulWidget {
  const SearchList({super.key});

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  // List<Product> dataList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 50, top: 5),
            width: 300,
            child: TextFormField(
              // controller: search,
              obscureText: true,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                fillColor: Color.fromARGB(255, 255, 255, 255),
                filled: true,
                hintText: "Search furniture",
                hintStyle: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff757A78),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
              ),
              onChanged: (text) {
                // searchVoid(text);
              },
            ),
          ),
        ],
      ),
      // body: StreamBuilder<QuerySnapshot>(
      //   stream: FirebaseFirestore.instance.collection('products').snapshots(),
      //   builder: (ctx, snapshots) {
      //     return (snapshots.connectionState == ConnectionState.waiting)
      //         ? Center(
      //             child: CircularProgressIndicator(),
      //           )
      //         : ListView.builder(itemBuilder: (ctx, i) {
      //             return Text(i.toString());
      //           });
      //   },
      // ),
    );
  }

  // void searchVoid(String text) {
  //   DatabaseReference searchRef =
  //       FirebaseDatabase.instance.ref().child("products");
  //   searchRef.once().then((DataSnapshot snapShot) {
  //         dataList.clear();
  //         // var keys = snapShot.value?.keys;
  //         var values = snapShot.value;
  //       } as FutureOr Function(DatabaseEvent value));
  // }
}
