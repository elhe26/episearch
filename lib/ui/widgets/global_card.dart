import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../shared/app_colors.dart';
import '../../app/app_viewmodel.dart';

class GlobalCard extends ViewModelWidget<EpiSearchViewModel> {
  const GlobalCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, EpiSearchViewModel model) {
    return Card(
      elevation: 3,
      borderOnForeground: false,
      shadowColor: Theme.of(context).cardTheme.shadowColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(style: BorderStyle.none),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          right: 10.0,
          bottom: 20.0,
        ),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Global - COVID19",
                style: GoogleFonts.quicksand(
                  color: Theme.of(context).accentColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
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
                  "${model.totalConfirmed}",
                  style: GoogleFonts.quicksand(
                    color: model.isDarkTheme ? darkBlueDarkTheme : darkSoftBlue,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${model.totalDeaths}",
                  style: GoogleFonts.quicksand(
                    color: model.isDarkTheme ? lightOrangeDarkTheme : lightRed,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${model.totalRecovered}",
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
                      "+${model.newConfirmed}",
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
                      "+${model.newDeaths}",
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
                      "+${model.newRecovered}",
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
                  "Última actualización: ",
                  style: GoogleFonts.quicksand(
                    color: Theme.of(context).primaryColor,
                    fontSize: 9.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${model.dateFormatted}",
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
