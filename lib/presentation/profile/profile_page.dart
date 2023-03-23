import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soff/presentation/profile/setting_part.dart';

import '../auth/auth_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Text(
                      "Profile",
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 252,
                    width: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xffEEEEEE),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://github.com/Saidikrom/images/raw/Saidikrom/image/profile%20image/2.png"))),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          width: 268,
                          child: Text(
                            textAlign: TextAlign.center,
                            "You have to be logged in order to make purchases.",
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext ctx) => AuthPage()));
                            },
                            child: Container(
                              width: 380,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xff249B69),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  "Log in",
                                  style: GoogleFonts.roboto(
                                    color: Color(0xffEEEEEE),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Create account",
                              style: GoogleFonts.roboto(
                                color: Color(0xff249B69),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Settings",
                      style: GoogleFonts.roboto(
                        color: const Color(0xFFBCBCBC),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SettingsPart(
                    title: "Language",
                  ),
                  const SettingsPart(
                    title: "Notifications",
                  ),
                  const SettingsPart(
                    title: "About us",
                  ),
                  Center(
                    heightFactor: 3,
                    child: Text(
                      "Beta version",
                      style: GoogleFonts.roboto(
                        color: const Color(0xFFBCBCBC),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
