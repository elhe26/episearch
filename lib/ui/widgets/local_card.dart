import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/app_colors.dart';

class LocalCard extends StatelessWidget {
  const LocalCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(
            top: 10.0, left: 10.0, right: 10.0, bottom: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(),
                    SizedBox(width: 5.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Republica Dominicana",
                        style: GoogleFonts.quicksand(
                          color: darkBlue,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Cambiar",
                    style: GoogleFonts.quicksand(
                      color: darkBlue,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Casos Totales",
                  style: GoogleFonts.quicksand(
                    color: mediumMonoGrey,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Muertes",
                  style: GoogleFonts.quicksand(
                    color: mediumMonoGrey,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Recuperados",
                  style: GoogleFonts.quicksand(
                    color: mediumMonoGrey,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "2,000,000",
                  style: GoogleFonts.quicksand(
                    color: darkSoftBlue,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "500,000",
                  style: GoogleFonts.quicksand(
                    color: lightRed,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "1,000,000",
                  style: GoogleFonts.quicksand(
                    color: lightGreen,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Nuevos: ",
                      style: GoogleFonts.quicksand(
                        color: mediumMonoGrey,
                        fontSize: 9.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "+15,000",
                      style: GoogleFonts.quicksand(
                        color: darkSoftBlue,
                        fontSize: 9.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Nuevos: ",
                      style: GoogleFonts.quicksand(
                        color: mediumMonoGrey,
                        fontSize: 9.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "+15,000",
                      style: GoogleFonts.quicksand(
                        color: lightRed,
                        fontSize: 9.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Nuevos: ",
                      style: GoogleFonts.quicksand(
                        color: mediumMonoGrey,
                        fontSize: 9.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "+15,000",
                      style: GoogleFonts.quicksand(
                        color: lightGreen,
                        fontSize: 9.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 33.0),
            Row(
              children: <Widget>[
                Text(
                  "Ultima actualizacion: ",
                  style: GoogleFonts.quicksand(
                    color: mediumMonoGrey,
                    fontSize: 9.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "25 Abril, 11:06 PM",
                  style: GoogleFonts.quicksand(
                    color: mediumMonoGrey,
                    fontSize: 9.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      elevation: 3,
      borderOnForeground: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(style: BorderStyle.none),
      ),
    );
  }
}
