import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith();

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: GoogleFonts.sourceSansProTextTheme(),
  );
}
