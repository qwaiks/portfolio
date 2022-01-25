import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';

ThemeData primaryTheme = ThemeData(
  primaryColor: Colors.black,
  fontFamily: AppConstants.primaryFont,
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(secondary: Color(0xFFA0AEC0), primary: Colors.black),
);
