import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData darkTheme = ThemeData(
  primaryColor: Color.fromARGB(221, 6, 7, 31),
  scaffoldBackgroundColor: Color.fromARGB(221, 6, 7, 31),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(221, 6, 7, 31),
  ),
  colorScheme: const ColorScheme.dark(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
  ),
  textTheme: GoogleFonts.rubikTextTheme().copyWith(
    displayLarge: GoogleFonts.viga(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.rubik(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodyMedium: GoogleFonts.rubik(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  ),
);
