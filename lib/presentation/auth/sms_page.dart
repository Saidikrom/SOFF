import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:soff/presentation/auth/auth_page.dart';
import 'package:soff/presentation/home/bottom_bar.dart';

// ignore: must_be_immutable
class SMSPage extends StatefulWidget {
  String login;
  SMSPage({
    Key? key,
    required this.login,
  }) : super(key: key);
  @override
  State<SMSPage> createState() => _SMSPageState();
}

class _SMSPageState extends State<SMSPage> {
  TextEditingController pinput = TextEditingController();
  final focusNode = FocusNode();
  bool isTrue = true;
  List list = [""];
  String text1 = "0";
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: GoogleFonts.roboto(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: isTrue ? Colors.green : Colors.red),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
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
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Enter code",
                    style: GoogleFonts.roboto(
                        color: const Color(0xFF323834),
                        fontSize: 28,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "We’ve sent a 6-digit-code to +998${widget.login}",
                    style: GoogleFonts.roboto(
                        color: const Color(0xFF757A78),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 90,
                    child: Pinput(
                      errorPinTheme: PinTheme(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          border: Border.all(color: Colors.green),
                        ),
                      ),
                      length: 6,
                      controller: pinput,
                      onChanged: (v) {
                        text1 += v;
                        print(pinput.text);
                        list.clear();
                        list.add(pinput.text);
                      },
                      errorText: "LocaleKeys.err_sentcode.tr()",
                      pinputAutovalidateMode: PinputAutovalidateMode.disabled,
                      // focusNode: focusNode,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                        height: 68,
                        width: 64,
                        decoration: defaultPinTheme.decoration!.copyWith(
                          border: Border.all(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  isTrue
                      ? const Text("")
                      : const Center(
                          child: Text(
                            "  LocaleKeys.err_sentcode.tr()",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.symmetric(vertical: 16),
        elevation: 0,
        child: GestureDetector(
          onTap: () async {
            try {
              PhoneAuthCredential credential = PhoneAuthProvider.credential(
                  verificationId: AuthPage.verify, smsCode: pinput.text);
              await auth.signInWithCredential(credential);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext ctx) => CustomBottomAppBar()));
            } catch (e) {
              print("wrong");
            }
          },
          child: Text(
            textAlign: TextAlign.center,
            "Send again",
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xff249B69),
            ),
          ),
        ),
      ),
    );
  }
}