import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPart extends StatelessWidget {
  final String title;
  const SettingsPart({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: GoogleFonts.roboto(
              color: Color(0xFF323834),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
              size: 15,
            ),
          ),
        ),
        Container(
          height: 1,
          color: Color(0xFFEEEEEE),
        )
      ],
    );
  }
}
