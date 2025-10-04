import 'package:cooksy_flutter/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get light => ThemeData.light().copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColorsLight.primary, onPrimary: AppColorsLight.onPrimary, primary: AppColorsLight.primary, surface: AppColorsLight.surface),
    textTheme: GoogleFonts.interTextTheme(ThemeData.light().textTheme),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: _elevatedButtonStyle,
    ),
  );

  static ThemeData get dark => ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSeed(primary: AppColorsDark.primary, seedColor: AppColorsDark.primary, onPrimary: AppColorsDark.onPrimary, surface: AppColorsDark.surface),
    textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: _elevatedButtonStyle,
    ),
  );

  static ButtonStyle get _elevatedButtonStyle => ElevatedButton.styleFrom(
    backgroundColor: AppColorsLight.primary,
    foregroundColor: AppColorsLight.onPrimary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    minimumSize: Size(double.infinity, 70),
  );
}
