
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avymart/core/constants/app_constants.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  colorScheme: const ColorScheme.dark(
    primary: primaryColor,
    secondary: secondaryColor,
  ),
  scaffoldBackgroundColor: darkBackgroundColor,
  cardColor: darkCardColor,
  textTheme: GoogleFonts.poppinsTextTheme(
    TextTheme(
      displayLarge: headline1.copyWith(color: darkTextColor),
      bodyLarge: bodyText1.copyWith(color: darkTextColor),
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

