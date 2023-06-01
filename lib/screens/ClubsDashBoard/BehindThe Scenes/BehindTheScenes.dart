import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venq_assessment/widgets/ClubDashBoard/BehindTheScenesCard.dart';
import 'package:venq_assessment/widgets/ClubDashBoard/BottomButton.dart';

class BehindTheScenesPage extends StatefulWidget {
  const BehindTheScenesPage({super.key});

  @override
  State<BehindTheScenesPage> createState() => _BehindTheScenesPageState();
}

class _BehindTheScenesPageState extends State<BehindTheScenesPage> {
  Color textc = Color(0xFFB59F68);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(width);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF2C2F33),
        body: Column(
          children: [
            SizedBox(
              height: height / 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          "assets/images/coinlogo.png",
                          height: 40,
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "B",
                        style:
                            GoogleFonts.bebasNeue(color: textc, fontSize: 48),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'ehind',
                              style: GoogleFonts.bebasNeue(
                                  color: textc, fontSize: 14)),
                          TextSpan(
                            text: "T",
                            style: GoogleFonts.bebasNeue(
                                color: textc, fontSize: 48),
                          ),
                          TextSpan(
                              text: 'he ',
                              style: GoogleFonts.bebasNeue(
                                  color: textc, fontSize: 14)),
                          TextSpan(
                            text: "S",
                            style: GoogleFonts.bebasNeue(
                                color: textc, fontSize: 48),
                          ),
                          TextSpan(
                              text: 'cenes',
                              style: GoogleFonts.bebasNeue(
                                  color: textc, fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 120, 116, 116),
                          blurRadius: 20,
                          spreadRadius: -2,
                          offset: Offset(-2, -2),
                        ),
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 20,
                          spreadRadius: -2,
                          offset: Offset(2, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color(0xFF2C2F33),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      color: const Color.fromARGB(255, 252, 248, 248),
                      icon: const Icon(
                        Icons.person_outline_sharp,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 30,
            ),
            Wrap(
              runSpacing: height / 54.21,
              children: [
                mycard(height, width, Color(0XB3D09494), "Tickets",
                    Color(0XFFD09494)),
                SizedBox(
                  width: width / 19.57,
                ),
                mycard(height, width, Color(0XB3A094D0), "Events",
                    Color(0XFFA094D0)),
                mycard(height, width, Color(0XB3B2D094), "Promoters",
                    Color(0XFFB2D094)),
                SizedBox(
                  width: width / 19.57,
                ),
                mycard(height, width, Color(0XB394D0C5), "Guestlist",
                    Color(0XFF94D0C5)),
                mycard(height, width, Color(0XB3A094D0), "tables",
                    Color(0XFFA094D0)),
                SizedBox(
                  width: width / 19.57,
                ),
                mycard(height, width, Color(0XB3D094B8), "Loyalty",
                    Color(0XFFD094B8)),
                mycard(
                    height, width, Color(0XB3D0B194), "bar", Color(0XFFD0B194)),
                SizedBox(
                  width: width / 19.57,
                ),
                mycard(height, width, Color(0XB3B2D094), "Walkins",
                    Color(0XFFB2D094)),
              ],
            ),
          ],
        ),bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            left: width / 5, right: width / 5, bottom: width / 20),
        child: bottombutton(
          "Scan QR Code",
          const Icon(
            Icons.qr_code_2_outlined,
            size: 35,
          ),
        ),
      ),
      ),
    );
  }
}

