import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors
const primaryColor = Colors.black;
const secondaryColor = Colors.white;
const textColor = Colors.white;
const bodyColor = Colors.black45;

// Padding & Radius
const defaultBorderRadius = 16.0;
const defaultPadding = 14.0;

// Buttons
final elevatedButtonTheme = ElevatedButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: primaryColor,
    padding: const EdgeInsets.all(defaultPadding),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
    ),
  ),
);

const floatingActionButtonTheme =
    FloatingActionButtonThemeData(backgroundColor: primaryColor);

//Input
final inputDecorationTheme = InputDecorationTheme(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(defaultBorderRadius),
    borderSide: BorderSide.none,
  ),
  filled: true,
  fillColor: Colors.grey.withOpacity(0.1),
);

ThemeData themeData = ThemeData(
  textTheme: GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
  brightness: Brightness.light,
  primaryColor: primaryColor,
  floatingActionButtonTheme: floatingActionButtonTheme,
  elevatedButtonTheme: elevatedButtonTheme,
  inputDecorationTheme: inputDecorationTheme,
);
