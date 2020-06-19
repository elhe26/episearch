import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../ui/shared/app_colors.dart';

@lazySingleton
class ThemeManager {
  ThemeData _themeData = ThemeData(
    // General letters.
    primaryColor: mediumMonoGrey,
    // Local & Global Card - Titles
    accentColor: darkBlue,
    // General color - screens
    backgroundColor: whiteMonoLetter,
    canvasColor: whiteMonoLetter,
    cardColor: whiteMonoLetter,
    // App Brightness
    brightness: Brightness.light,
    // Textos
    textSelectionColor: darkSoftBlue,
    // AppBar general color - Icons, background
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      actionsIconTheme: IconThemeData(
        color: darkMonoGrey,
      ),
      color: whiteMonoLetter,
    ),
    cardTheme: CardTheme(
      shadowColor: Colors.black,
    ),
  );

  // * Getters
  ThemeData get themeData => _themeData;

  // ! Functions
  void setThemeData({bool isDarkTheme}) {
    _themeData = ThemeData(
      // General letters.
      primaryColor: isDarkTheme ? lightMonoGrey : mediumMonoGrey,
      // Local & Global Card - Titles
      accentColor: isDarkTheme ? whiteMonoLetter : darkBlue,
      // General color - screens
      backgroundColor: isDarkTheme ? darkColor : whiteMonoLetter,
      canvasColor: isDarkTheme ? darkColor : whiteMonoLetter,
      cardColor: isDarkTheme ? darkColor : whiteMonoLetter,
      // App Brightness
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      // Textos
      textSelectionColor: isDarkTheme ? lightBlue : darkSoftBlue,
      // AppBar general color - Icons, background
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        actionsIconTheme: IconThemeData(
          color: isDarkTheme ? whiteMonoLetter : darkMonoGrey,
        ),
        color: isDarkTheme ? softShadow.withOpacity(0.0) : whiteMonoLetter,
      ),
      cardTheme: CardTheme(
        shadowColor: isDarkTheme ? darkColor : Colors.black,
      ),
    );
  }
}
