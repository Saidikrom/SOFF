import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soff/presentation/auth/create_account.dart';
import 'package:soff/presentation/profile/setting_part.dart';

import '../auth/auth_page.dart';

class ProfilePage extends StatefulWidget {
  final bool isTrue;
  String? name;
  String? number;
  String? image;
  ProfilePage(
      {super.key, this.name, this.number, required this.isTrue, this.image});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          widget.isTrue
              ? Container(
                  height: 320,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          Center(
                            child: Text(
                              "Profile",
                              style: GoogleFonts.roboto(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          widget.image!,
                                          // "https://github.com/Saidikrom/images/raw/Saidikrom/image/profile%20image/2.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // "Saidkamol",
                                        widget.name!,
                                        style: GoogleFonts.roboto(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        // "+998 (99) 608 10 23",
                                        "+998${widget.number!}",
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Center(
                                  child: Text(
                                    "Edit",
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xfff249B69),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 56,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListTile(
                              title: Text(
                                "My orders",
                                style: GoogleFonts.roboto(
                                  color: const Color(0xff249B69),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xff249B69),
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SafeArea(
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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext ctx) =>
                                                AuthPage()));
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
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext ctx) =>
                                                CreateAccount()));
                                  },
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
                ),
                const SizedBox(
                  height: 80,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
