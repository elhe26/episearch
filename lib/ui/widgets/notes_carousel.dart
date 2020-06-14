import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/app_colors.dart';

class NotesCarousel extends StatelessWidget {
  const NotesCarousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: SizedBox(
        height: 145,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            SizedBox(
              width: 130,
              child: Card(
                elevation: 0,
                borderOnForeground: false,
                color: darkSoftBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(style: BorderStyle.none),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Lavate \nlas manos",
                      style: GoogleFonts.quicksand(
                        color: whiteMonoLetter,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Image.asset(
                      "assets/images/hand-wash.png",
                      fit: BoxFit.scaleDown,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 130,
              child: Card(
                elevation: 0,
                borderOnForeground: false,
                color: lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(style: BorderStyle.none),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Usa \nla mascara",
                      style: GoogleFonts.quicksand(
                        color: whiteMonoLetter,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Image.asset(
                      "assets/images/medical-mask.png",
                      fit: BoxFit.scaleDown,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 130,
              child: Card(
                elevation: 0,
                borderOnForeground: false,
                color: lightPink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(style: BorderStyle.none),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Usa \ngel desinfectante",
                      style: GoogleFonts.quicksand(
                        color: whiteMonoLetter,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Image.asset(
                      "assets/images/hand-sanitizer.png",
                      fit: BoxFit.scaleDown,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

