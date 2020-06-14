import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/app_colors.dart';

class TestCard extends StatelessWidget {
  const TestCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Revisa tu estado con un test COVID-19",
                style: GoogleFonts.quicksand(
                  color: whiteMonoLetter,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '''But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will''',
                style: GoogleFonts.quicksand(
                  color: whiteMonoLetter,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
      elevation: 3,
      semanticContainer: false,
      borderOnForeground: false,
      color: lightPink,
      shape: RoundedRectangleBorder(
        side: BorderSide(style: BorderStyle.none),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
