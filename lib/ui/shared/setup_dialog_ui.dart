import 'dart:ui';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';

import '../shared/app_colors.dart';
import '../../app/locator.dart';
import '../../utils/horizontal_line.dart';

void setupDialogUI() {
  var dialogService = locator<DialogService>();

  dialogService.registerCustomDialogUi(
    (context, dialogRequest) => BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 36),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide.none,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment(0.5, 0.0),
              end: Alignment(0.0, 1.0),
              colors: [
                lightPink,
                softBlack,
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // * Avatar
                AvatarGlow(
                  glowColor: lightBlue,
                  endRadius: 80.0,
                  showTwoGlows: true,
                  repeat: true,
                  duration: Duration(milliseconds: 800),
                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: Material(
                    elevation: 1.0,
                    shape: CircleBorder(
                      side: BorderSide(style: BorderStyle.none),
                    ),
                    child: CircleAvatar(
                      radius: 45.0,
                      backgroundColor: lightMonoGrey,
                      backgroundImage: AssetImage(dialogRequest.imageUrl),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                // * Acerca de
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    dialogRequest.title,
                    style: GoogleFonts.quicksand(
                      fontSize: 14,
                      color: whiteMonoLetter,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                // * Linea
                Container(
                  alignment: Alignment.topLeft,
                  child: CustomPaint(
                    painter: DrawHorizontalLine(
                      lineColor: lightBlue,
                      strokeWidth: 3,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                // * Parrafo
                Text(
                  dialogRequest.description,
                  style: GoogleFonts.quicksand(
                    fontSize: 10,
                    color: whiteMonoLetter,
                    fontWeight: FontWeight.bold,
                  ),
                  softWrap: true,
                ),
                SizedBox(height: 40),
                // * Brand Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        FontAwesomeIcons.linkedin,
                        size: 20,
                        color: linkedin,
                      ),
                      onTap: () => dialogService.completeDialog(
                        DialogResponse(
                          confirmed: true,
                          responseData: ["linkedin"],
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        size: 20,
                        color: instagram,
                      ),
                      onTap: () => dialogService.completeDialog(
                        DialogResponse(
                          confirmed: true,
                          responseData: ["instagram"],
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Icon(
                        FontAwesomeIcons.twitter,
                        size: 20,
                        color: twitter,
                      ),
                      onTap: () => dialogService.completeDialog(
                        DialogResponse(
                          confirmed: true,
                          responseData: ["twitter"],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // * Hecho con Amor por Erick Heredia
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.quicksand(
                      color: whiteMonoLetter,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: "Hecho con"),
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.0),
                          child: Icon(
                            FontAwesomeIcons.solidHeart,
                            color: lightPink,
                            size: 12.0,
                          ),
                        ),
                      ),
                      TextSpan(text: "por Erick Heredia"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
