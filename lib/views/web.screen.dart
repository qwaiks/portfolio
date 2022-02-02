import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/views/sections/about.section.dart';
import 'package:portfolio_webapp/views/sections/project.section.dart';
import 'package:portfolio_webapp/views/sections/top.section.dart';
import 'package:portfolio_webapp/views/sections/work.section.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //TopSection(),
          Utils.verticalSpacer(space: 100),
          WorkSection(),
          Utils.verticalSpacer(space: 100),
          ProjectSection(),
          Utils.verticalSpacer(space: 100),
          AboutSection(),
        ],
      ),
    );
  }
}
