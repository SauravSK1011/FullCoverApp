import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:google_fonts/google_fonts.dart';
import 'package:venq_assessment/Styles/Colors.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:venq_assessment/screens/Clubs/clubs_screen.dart';
import 'package:venq_assessment/screens/Events/events_screen.dart';

bool onclick = false;

class bottomnavbar extends StatefulWidget {
  bottomnavbar(
      {super.key,
      required this.height,
      required this.width,
      this.iscolorchange = false});
  double height;
  double width;
  bool iscolorchange;
  @override
  State<bottomnavbar> createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: widget.iscolorchange ? Colors.white : backgroundColorfigma,
      ),
      child: Row(
        children: [
          SizedBox(
            width: (widget.width - widget.width / 1.04) / 2,
          ),
          Container(
            // margin: const EdgeInsets.all(24.0),

            height: widget.height / 7.5,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: widget.height / 12,
                    width: widget.width / 1.04,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: widget.iscolorchange
                          ? backgroundColorfigma
                          : offwhite,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: widget.width / 6,
                            ),
                            InkWell(onTap: (){
                              Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ClubsScreen()));
                            },
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/clubs.png",scale: 16473/widget.height,
                                      color: widget.iscolorchange
                                          ? Colors.white
                                          : backgroundColorfigma,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text("Clubs",
                                          style: GoogleFonts.bebasNeue(
                                            fontSize: widget.height/45.63157894736842,
                                            color: widget.iscolorchange
                                                ? Colors.white
                                                : backgroundColorfigma,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/restaurant.png",scale: 16473/widget.height,
                                    color: widget.iscolorchange
                                        ? Colors.white
                                        : backgroundColorfigma,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text("Restraurants",
                                        style: GoogleFonts.bebasNeue(
                                          fontSize: widget.height/45.63157894736842,
                                          color: widget.iscolorchange
                                              ? Colors.white
                                              : backgroundColorfigma,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(onTap: (){
                              Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  EventsScreen()));
                            },
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/Events.png",scale: 16473/widget.height,
                                      color: widget.iscolorchange
                                          ? offwhite
                                          : backgroundColorfigma,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5.0),
                                      child: Text("Events",
                                          style: GoogleFonts.bebasNeue(
                                            fontSize: widget.height/45.63157894736842,
                                            color: widget.iscolorchange
                                                ? offwhite
                                                : backgroundColorfigma,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        height: widget.height / 10.5,
                        width: widget.width / 4.5,
                        child: Card(elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: widget.iscolorchange
                              ? Colors.white
                              : backgroundColorfigma,
                        )),
                  ),
                ),
                // Container(color: Colors.white,height: 25,width: widget.width-25,),
                Padding(
                  padding: const EdgeInsets.only(left: 37, top: 10),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: widget.height / 14,
                      width: widget.width / 6.62,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            onclick = true;
                          });
                        },
                        child: Card(
                          color: widget.iscolorchange
                              ? Colors.white
                              : backgroundColorfigma,
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(5)),
                          child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // BoxShadow(
                                  //   color: widget.iscolorchange ? Color(0xFFE0E0E0):Colors.white10.withOpacity(0.05),
                                  //   offset: Offset(4, 4),
                                  //   blurRadius: 2,
                                  // ),
                                  BoxShadow(
                                    color: widget.iscolorchange
                                        ? Colors.white
                                        : Color.fromARGB(255, 67, 73, 78),
                                    offset: Offset(-4, -4),
                                    blurRadius: 10,
                                  ),
                                  // BoxShadow(
                                  //   color:widget.iscolorchange ?  Colors.grey.withOpacity(0.3):Colors.white10.withOpacity(0.05),
                                  //   offset: Offset(-4, 4),
                                  //   blurRadius: 2,
                                  // ),
                                  BoxShadow(
                                    color: widget.iscolorchange
                                        ? Colors.grey.withOpacity(0.3)
                                        : Colors.transparent,
                                    offset: Offset(4, -4),
                                    blurRadius: 3,
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                color: widget.iscolorchange
                                    ? Colors.white
                                    : backgroundColorfigma,
                              ),
                              child: Image.asset(
                                "assets/images/qrcode.png",
                                scale: 1040.4/widget.height,
                                color: widget.iscolorchange
                                    ? Colors.black
                                    : Colors.white,
                              )),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
