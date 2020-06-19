import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../shared/app_colors.dart';
import '../../app/app_viewmodel.dart';

class LocalCard extends ViewModelWidget<EpiSearchViewModel> {
  const LocalCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, EpiSearchViewModel model) {
    return Card(
      color: Theme.of(context).cardColor,
      elevation: 3,
      borderOnForeground: false,
      shadowColor: Theme.of(context).cardTheme.shadowColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(style: BorderStyle.none),
      ),
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
                          color: Theme.of(context).accentColor,
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
                      color: Theme.of(context).accentColor,
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
                    color: Theme.of(context).primaryColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Muertes",
                  style: GoogleFonts.quicksand(
                    color: Theme.of(context).primaryColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Recuperados",
                  style: GoogleFonts.quicksand(
                    color: Theme.of(context).primaryColor,
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
                  "${model.localTotalConfirmed}",
                  style: GoogleFonts.quicksand(
                    color: model.isDarkTheme ? darkBlueDarkTheme : darkSoftBlue,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${model.localTotalDeaths}",
                  style: GoogleFonts.quicksand(
                    color: model.isDarkTheme ? lightOrangeDarkTheme : lightRed,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${model.localTotalRecovered}",
                  style: GoogleFonts.quicksand(
                    color: model.isDarkTheme ? lightGreenDarkTheme : lightGreen,
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
                        color: Theme.of(context).primaryColor,
                        fontSize: 9.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "+${model.localNewConfirmed}",
                      style: GoogleFonts.quicksand(
                        color: model.isDarkTheme
                            ? darkBlueDarkTheme
                            : darkSoftBlue,
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
                        color: Theme.of(context).primaryColor,
                        fontSize: 9.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "+${model.localNewDeaths}",
                      style: GoogleFonts.quicksand(
                        color:
                            model.isDarkTheme ? lightOrangeDarkTheme : lightRed,
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
                        color: Theme.of(context).primaryColor,
                        fontSize: 9.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "+${model.localNewRecovered}",
                      style: GoogleFonts.quicksand(
                        color: model.isDarkTheme
                            ? lightGreenDarkTheme
                            : lightGreen,
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
                    color: Theme.of(context).primaryColor,
                    fontSize: 9.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${model.localDateFormatted}",
                  style: GoogleFonts.quicksand(
                    color: Theme.of(context).primaryColor,
                    fontSize: 9.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
