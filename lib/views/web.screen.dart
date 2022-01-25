import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/utils.dart';

class WebScreen extends StatelessWidget {

  const WebScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size= SizeConfig();
    size.init(context);

    final name = Text(
      AppString.welcomeName,
      style: Theme
          .of(context)
          .textTheme
          .headline3
          .copyWith(
          fontWeight: FontWeight.w600, color: Colors.black, fontSize: 100),
    );
    final desc = Text(
      AppString.welcomeDesc,
      style:
      TextStyle(fontSize: 18, fontWeight: FontWeight.w300, height: 2.0),
    );

    final appBar = Container(
      width: getProportionateScreenWidth(510),
      padding: const EdgeInsets.all(24),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          appBarAction("work", () {}),
          appBarAction("project", () {}),
          appBarAction("about", () {}),
        ],
      ),
    );

    final background = Container(
      width: getProportionateScreenWidth(1119),
      height: getProportionateScreenHeight(713),
      color: const Color(0XFFF6F6F6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          appBar,
          ClipRRect(
            child: Image.asset(
              AppImages.portfolioImage,
              width: getProportionateScreenWidth(609),
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Positioned.fill(child: Align(alignment:Alignment.topRight,child: background))

          ],
        ),
      ),
    );
  }

  Widget appBarAction(String title, Function onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }
}
