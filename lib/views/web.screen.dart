import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/utils.dart';


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

        ],
      ),
    );
  }
}
