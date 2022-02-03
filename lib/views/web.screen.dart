import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/views/sections/about.section.dart';
import 'package:portfolio_webapp/views/sections/project.section.dart';
import 'package:portfolio_webapp/views/sections/top.section.dart';
import 'package:portfolio_webapp/views/sections/work.section.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = SizeConfig();
    size.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: getProportionateScreenWidth(1241),
                height: getProportionateScreenHeight(769),
                child: TopSection(),
              )),
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
