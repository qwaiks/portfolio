import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/shared_widgets/footer.dart';
import 'package:portfolio_webapp/shared_widgets/header.dart';
import 'package:portfolio_webapp/views/sections/company.section.dart';
import 'package:portfolio_webapp/views/sections/footer.section.dart';
import 'package:portfolio_webapp/views/sections/main.section.dart';
import 'package:portfolio_webapp/views/sections/work.section.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = SizeConfig();
    size.init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 20),
        child: ListView(
          children: [Header(), MainSection(), WorkSection(), CompanySection(), LinksSection(), Footer()],
        ),
      ),
    );
  }
}
