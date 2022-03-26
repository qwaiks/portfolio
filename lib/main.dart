import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/responsive.screen.dart';
import 'package:portfolio_webapp/views/mobile.screen.dart';
import 'package:portfolio_webapp/views/tablet.screen.dart';
import 'package:portfolio_webapp/views/web.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kwaku Owusu-Ansa | Porfolio',
        debugShowCheckedModeBanner: false,
        theme: primaryTheme,
        home: const Responsive(
            mobile: MobileScreen(),
            tablet: TabletScreen(),
            desktop: WebScreen()));
  }
}
