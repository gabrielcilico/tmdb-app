// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tmdb_app/design/theme/palette.dart';

class DefaultTheme {
  static void init() {
    GoogleFonts.config.allowRuntimeFetching = false;
  }

  static ThemeData getTheme(BuildContext context) => ThemeData(
      useMaterial3: true,
      primarySwatch: Palette.materialPrimary,
      primaryColor: Palette.primary,
      primaryColorDark: Palette.primaryDark,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Palette.secondary,
        primary: Palette.primary,
      ),
      scaffoldBackgroundColor: Palette.white,
      iconTheme: const IconThemeData(color: Palette.iconColor),
      dialogBackgroundColor: Colors.white,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Palette.primary,
        iconSize: 32,
      ),
      textTheme: textTheme(),
      outlinedButtonTheme: DefaultTheme.outlinedButtonTheme(),
      elevatedButtonTheme: DefaultTheme.elevatedButtonTheme(),
      inputDecorationTheme: DefaultTheme.inputDecoration(),
      dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: DefaultTheme.inputDecoration(),
      ),
      textButtonTheme: DefaultTheme.textButtonTheme(),
      brightness: Brightness.light,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Palette.primary,
        selectionColor: Palette.secondary,
        selectionHandleColor: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Palette.secondary,
      ),
      cardColor: Colors.white,
      cardTheme: const CardTheme(color: Colors.white, elevation: 2),
      canvasColor: Colors.white);

  static inputDecoration() {
    return InputDecorationTheme(
      fillColor: Palette.inputBackground,
      focusColor: Palette.secondary,
      filled: true,
      labelStyle: inputDecorationLabelTextTheme(color: Palette.labelColor, size: 14, fontWeight: FontWeight.w500),
      errorMaxLines: 2,
      suffixIconColor: Palette.iconInputColor,
      prefixIconColor: Palette.iconInputColor,
      hintStyle: inputDecorationLabelTextTheme(size: 14, color: Palette.textColor),
      errorStyle: inputDecorationLabelTextTheme(size: 12, color: Palette.error),
      errorBorder: inputDecorationBorderStyle(color: Palette.error),
      focusedErrorBorder: inputDecorationBorderStyle(color: Palette.error),
      contentPadding: const EdgeInsets.all(8),
      border: inputDecorationBorderStyle(color: Palette.inputBorderColor),
      enabledBorder: inputDecorationBorderStyle(color: Palette.inputBorderColor),
      focusedBorder: inputDecorationBorderStyle(color: Palette.secondary),
    );
  }

  static inputDecorationBorderStyle({@required color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: color,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    );
  }

  static inputDecorationLabelTextTheme({color, double size = 14, bool bold = false, FontWeight? fontWeight}) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: fontWeight ?? (bold ? FontWeight.bold : FontWeight.normal),
    );
  }

  static TextStyle inputDecorationTextTheme() {
    return const TextStyle(
      color: Palette.inputTextColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
  }

  static TextTheme textTheme() => GoogleFonts.outfitTextTheme(
        const TextTheme(
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: Palette.secondary,
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Palette.secondary,
          ),
          titleSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Palette.secondary,
          ),
          bodySmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Palette.textColor,
            decorationThickness: 0,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Palette.textColor,
            decorationThickness: 0,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Palette.textColor,
            decorationThickness: 0,
          ),
          labelLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Palette.labelColor,
          ),
          labelMedium: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Palette.labelColor,
          ),
          labelSmall: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: Palette.labelColor,
          ),
        ),
      );

  static ElevatedButtonThemeData elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Palette.primary,
        foregroundColor: Palette.primary,
        minimumSize: const Size(80, 48),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        textStyle: elevatedButtonTextStyle(),
      ),
    );
  }

  static TextStyle elevatedButtonTextStyle() {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Palette.primary,
    );
  }

  static TextButtonThemeData textButtonTheme() {
    return TextButtonThemeData(
      style: OutlinedButton.styleFrom(
        enableFeedback: true,
        foregroundColor: Palette.primaryDark,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData outlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Palette.primary,
        backgroundColor: Colors.white,
        minimumSize: const Size(80, 48),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        side: const BorderSide(color: Colors.white, width: 2),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }

  IconThemeData iconTheme() {
    return const IconThemeData(color: Palette.iconColor);
  }
}
