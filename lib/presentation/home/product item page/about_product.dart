import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutProduct extends StatelessWidget {
  const AboutProduct({
    super.key,
    required this.details,
    required this.text,
  });

  final String details;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.roboto(
              color: const Color(0xff757A78),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            details,
            style: GoogleFonts.roboto(
              color: const Color(0xff323834),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
