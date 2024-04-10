import 'package:flutter/material.dart';

Color mainBgColor = const Color.fromRGBO(22, 21, 19, 1);
Color appBarBgColor = const Color.fromRGBO(34, 34, 34, 1);
Color cardColor = const Color.fromRGBO(42, 42, 42, 1);
Color footerColor = const Color.fromRGBO(25, 25, 25, 1);
Color secondaryTextColor = const Color.fromRGBO(197, 197, 197, 1);
Color mainColor = Colors.white;

Set<Color> grad1 = {
  const Color.fromRGBO(255, 134, 96, 1),
  const Color.fromRGBO(154, 51, 255, 1),
};

Set<Color> orangeGrad = {
  const Color.fromRGBO(255, 134, 96, 1),
  const Color.fromRGBO(213, 73, 29, 1),
};

Set<Color> blueGrad = {
  const Color.fromRGBO(91, 173, 255, 1),
  const Color.fromRGBO(19, 115, 209, 1),
};

ThemeData themeData = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: mainBgColor,
  appBarTheme: AppBarTheme(
    backgroundColor: appBarBgColor,
  ),
  colorScheme: const ColorScheme.dark(),
  fontFamily: "Poppins",
  textTheme: TextTheme(
    headlineLarge: const TextStyle(
      fontSize: 55,
      fontWeight: FontWeight.w800,
    ),
    headlineSmall: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w800,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w300,
      color: secondaryTextColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: secondaryTextColor,
    ),
    labelMedium: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    labelLarge: const TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: secondaryTextColor,
      letterSpacing: 6,
    ),
  ),
);
