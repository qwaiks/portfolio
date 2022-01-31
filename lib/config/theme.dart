import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';

ThemeData primaryTheme = ThemeData(
  primaryColor: Colors.black,
  fontFamily: AppConstants.satoshiFont,
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(secondary: Color(0xFFA0AEC0), primary: Colors.black),
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
