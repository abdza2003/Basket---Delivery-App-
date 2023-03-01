import 'package:advanceproje/core/constants/color_manager.dart';
import 'package:advanceproje/core/constants/font_manager.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    // theme mode
    brightness: Brightness.light,
    // primary color
    primaryColor: ColorManager.primary,
    // appbar
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: FontManager.boldStyle,
    ),
    // elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        minimumSize: const Size(50, 30),
        textStyle: FontManager.boldStyle,
        padding: const EdgeInsets.all(15),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 5,
      shadowColor: ColorManager.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      hintStyle: FontManager.smallBoldStyle,
      labelStyle: FontManager.smallBoldStyle,
      fillColor: ColorManager.textFaild,
      filled: true,

      /// enabled border
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: ColorManager.textFaild,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        // gapPadding: 30,
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: ColorManager.textFaild,
        ),
      ),
    ),
  );
}
