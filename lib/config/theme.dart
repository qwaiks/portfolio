import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/colors.dart';
import 'package:portfolio_webapp/config/constants.dart';

ThemeData primaryTheme = ThemeData(
  primaryColor: Colors.black,
  fontFamily: AppConstants.primaryFont,
  textTheme: primaryTextTheme,
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(secondary: AppColors.colorSecondary, primary: Colors.black),
);

TextTheme primaryTextTheme = const TextTheme().copyWith(
  displayLarge: const TextStyle(
      fontSize: 140,
      color: AppColors.lightThemeTextColor,
      fontWeight: FontWeight.w700),
  headlineLarge: const TextStyle(
      fontSize: 70,
      color: AppColors.lightThemeTextColor,
      fontWeight: FontWeight.w700),
  headlineMedium: const TextStyle(
      fontSize: 65,
      color: AppColors.lightThemeTextColor,
      fontWeight: FontWeight.normal),
  titleLarge: const TextStyle(
      fontSize: 50,
      color: AppColors.lightThemeTextColor,
      fontWeight: FontWeight.w700),
  bodyLarge: const TextStyle(
      fontSize: 16,
      color: AppColors.lightThemeTextColor,
      height: 1.3,
      fontWeight: FontWeight.normal),
  bodyMedium: const TextStyle(
      fontSize: 14,
      color: AppColors.lightThemeTextColor,
      fontWeight: FontWeight.normal),
);

class AppTextTheme {
  static const extraLage =
      TextStyle(fontSize: 100, fontWeight: FontWeight.w700);

  static const appTitle = TextStyle(fontSize: 27, fontWeight: FontWeight.w900);

  static const headerTitle =
      TextStyle(fontSize: 60, fontWeight: FontWeight.w700);

  static const sectionTitle =
      TextStyle(fontSize: 80, fontWeight: FontWeight.w700);

  static const header = TextStyle(fontSize: 30, fontWeight: FontWeight.w500);

  static const subHeader = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  static const caption = TextStyle(fontSize: 12, fontWeight: FontWeight.w500);

  static const bodyText = TextStyle(
    fontSize: 18,
  );

  static const button = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
}
