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
      elevation: 3,
      semanticContainer: false,
      borderOnForeground: false,
      shadowColor: Theme.of(context).cardTheme.shadowColor,
      color: lightPink,
      shape: RoundedRectangleBorder(
        side: BorderSide(style: BorderStyle.none),
        borderRadius: BorderRadius.circular(10.0),
      ),
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
                '''Acercate a un centro para realizar las pruebas de detección del coronarivus. Practica el distanciamiento social y permanece en cuarentena si tienes sospechas.''',
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
    );
  }
}
