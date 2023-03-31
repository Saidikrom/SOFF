import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soff/presentation/home/search_list.dart';

class SearchPart extends StatelessWidget {
  const SearchPart({
    super.key,
    required this.search,
  });

  final TextEditingController search;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          width: 380,
          height: 56,
          child: TextFormField(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => SearchList()));
            },
            controller: search,
            obscureText: true,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 20),
              fillColor: const Color(0xffF0F0F0),
              filled: true,
              suffixIcon: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.search),
              ),
              suffixIconColor: const Color(0xff757A78),
              hintText: "Search furniture",
              hintStyle: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xff757A78),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
