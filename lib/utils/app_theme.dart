import 'package:clientes/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData(BuildContext context, {bool isDarkTheme}) {
    return ThemeData(
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
