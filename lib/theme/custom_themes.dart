import 'package:flutter/material.dart';
import 'package:food_ninja/theme/custom_colors.dart';
import 'package:food_ninja/utils/utils.dart';

class CustomThemes {
  // App Theme

  static ThemeData appTheme(bool dark) => ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            textStyle: const TextStyle(
              fontSize: 10,
              color: CustomColors.primary,
              fontWeight: FontWeight.bold,
            ),
            foregroundColor: CustomColors.primary,
          ),
        ),
        primaryColor: CustomColors.primary,
        fontFamily: "BentonSans",
        textTheme: TextTheme(
          headlineLarge: headlineLarge,
          headlineMedium: headlineMedium,
          headlineSmall: headlineSmall(dark),
          displayLarge: displayLarge(dark),
          displayMedium: displayMedium(dark),
          displaySmall: displaySmall,
          titleLarge: titleLarge(dark),
          titleMedium: titleMedium(dark),
          titleSmall: titleSmall(dark),
          bodyLarge: bodyLarge(dark),
          bodyMedium: bodyMedium(dark),
          bodySmall: bodySmall(dark),
          labelSmall: labelSmall(dark),
          labelMedium: labelMedium,
          labelLarge: labelLarge(dark),
        ),
        appBarTheme: appBarTheme(dark),
        colorScheme: ColorScheme(
          brightness: dark ? Brightness.dark : Brightness.light,
          background:
              dark ? CustomColors.darkBackground : CustomColors.lightBackground,
          onBackground:
              dark ? CustomColors.darkBackground : CustomColors.lightBackground,
          primary: CustomColors.primary,
          onPrimary: CustomColors.onPrimary,
          secondary: CustomColors.secondary,
          onSecondary: CustomColors.secondary,
          error: CustomColors.error,
          onError: CustomColors.error,
          surface: CustomColors.surface,
          onSurface: CustomColors.surface,
          tertiary: CustomColors.golden,
        ),
      );

  static AppBarTheme appBarTheme(bool dark) => AppBarTheme(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: displayLarge(dark),
      );

  // Text Themes

  // Logo Text Only
  static TextStyle headlineLarge = const TextStyle(
    fontSize: 40,
    color: CustomColors.primary,
    fontWeight: FontWeight.bold,
    fontFamily: "Viga",
  );

  static TextStyle headlineMedium = const TextStyle(
    fontSize: 30,
    color: CustomColors.primary,
    fontWeight: FontWeight.bold,
  );

  static TextStyle displayLarge(bool dark) => TextStyle(
        fontSize: 31,
        color: dark
            ? CustomColors.displayLargeColorDark
            : CustomColors.displayLargeColorLight,
        fontWeight: FontWeight.bold,
      );

  static TextStyle titleLarge(bool dark) => TextStyle(
        fontSize: 22,
        color: dark
            ? CustomColors.displayLargeColorDark
            : CustomColors.displayLargeColorLight,
        fontWeight: FontWeight.bold,
        height: 1.3,
      );

  static TextStyle titleMedium(bool dark) => TextStyle(
        fontSize: 20,
        color: dark
            ? CustomColors.displayLargeColorDark
            : CustomColors.displayLargeColorLight,
        fontWeight: FontWeight.bold,
        height: 1.3,
      );

  static TextStyle titleSmall(bool dark) => TextStyle(
        fontSize: 12,
        color: dark
            ? CustomColors.displayLargeColorDark
            : CustomColors.displayLargeColorLight,
        fontWeight: FontWeight.bold,
        height: 1.3,
      );

  static TextStyle bodySmall(bool dark) => TextStyle(
        fontSize: 12,
        color: dark ? Colors.white : Colors.black,
        fontWeight: FontWeight.w400,
        height: 1.79,
      );

  static TextStyle bodyMedium(bool dark) => TextStyle(
        fontSize: 13,
        color: dark
            ? CustomColors.displayLargeColorDark
            : CustomColors.displayLargeColorLight,
        fontWeight: FontWeight.w600,
        height: 1.8,
        letterSpacing: 1,
      );

  // Hint Theme
  static TextStyle labelSmall(bool dark) => TextStyle(
        fontSize: 14,
        color: dark
            ? Colors.white.withOpacity(0.3)
            : CustomColors.hintColor.withOpacity(0.3),
        fontWeight: FontWeight.w400,
        height: 1.8,
      );

  static TextStyle labelLarge(bool dark) => TextStyle(
        fontSize: 25,
        color: dark ? Colors.white : CustomColors.displayLargeColorLight,
        fontWeight: FontWeight.bold,
        height: 1.3,
      );

  static TextStyle displayMedium(bool dark) => TextStyle(
        fontSize: 19,
        color: dark ? Colors.white : CustomColors.displayLargeColorLight,
        fontWeight: FontWeight.w400,
      );

  static TextStyle displaySmall = const TextStyle(
    fontSize: 14,
    color: Colors.white,
  );

  static TextStyle bodyLarge(bool dark) => TextStyle(
        fontSize: 14,
        color: dark ? Colors.white : CustomColors.displayLargeColorLight,
        fontWeight: FontWeight.w400,
        height: 1.8,
      );

  static TextStyle headlineSmall(bool dark) => TextStyle(
        fontSize: 15,
        color: dark ? Colors.white : CustomColors.displayLargeColorLight,
        fontWeight: FontWeight.bold,
        height: 1.3,
      );

  // For ElevatedButton Text
  static TextStyle labelMedium = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  // Decoration shadow

  static BoxDecoration decorationShadow(BuildContext context,
          {Color? lightColor, bool shadow = true}) =>
      BoxDecoration(
        color: Utils.isDark(context)
            ? CustomColors.surface.withOpacity(0.1)
            : lightColor ?? Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: Utils.isDark(context) || !shadow
            ? []
            : [
                BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  color: CustomColors.shadowColor.withOpacity(0.07),
                ),
              ],
      );

  static InputBorder textFieldBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(15),
  );

  static LinearGradient primaryGradient({double opacity = 1.0}) =>
      LinearGradient(
        colors: [
          CustomColors.primary.withOpacity(opacity),
          CustomColors.onPrimary.withOpacity(opacity),
        ],
      );
}
