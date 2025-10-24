
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avymart/core/constants/app_constants.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  colorScheme: const ColorScheme.light(
    primary: primaryColor,
    secondary: secondaryColor,
  ),
  scaffoldBackgroundColor: backgroundColor,
  cardColor: cardColor,
  textTheme: GoogleFonts.poppinsTextTheme(
    const TextTheme(
      displayLarge: headline1,
      bodyLarge: bodyText1,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(defaultBorderRadius),
    ),
  ),
);
