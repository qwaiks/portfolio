import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/utils.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = SizeConfig();
    size.init(context);

    final name = Text(
      AppString.welcomeName,
      style: Theme.of(context).textTheme.headline3.copyWith(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: getProportionateScreenWidth(100)),
    );
    final desc = Text(
      AppString.welcomeDesc,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, height: 2.0),
    );

    final socialsList = SizedBox(
      width: getProportionateScreenWidth(199),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          socialLink(title: "TW."),
          socialLink(title: "IN."),
          socialLink(title: "FB."),
        ],
      ),
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

    final downloadCVButton  = SizedBox(
      width: getProportionateScreenWidth(353),
      height: getProportionateScreenHeight(113),
      child: MaterialButton(
        elevation: 0.0,
        onPressed:(){},
        disabledColor: Colors.grey.shade500,
        disabledTextColor: Colors.white,
        disabledElevation: 0.0,
        child: false
            ? const CircularProgressIndicator.adaptive(
          backgroundColor: Colors.white,
        )
            :Text(
          "Download CV".toUpperCase(),
          style: TextStyle(fontSize: 30, letterSpacing: 8.3),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        color: Colors.pink.shade50,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned.fill(
                child: Align(alignment: Alignment.topRight, child: background)),
            Positioned(
                top: getProportionateScreenHeight(164),
                left: getProportionateScreenWidth(200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    name,
                    Utils.verticalSpacer(),
                    socialsList,
                    Utils.verticalSpacer(),
                    desc,

                    Utils.verticalSpacer(space: 20),
                    downloadCVButton

                  ],
                ))
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

  Widget socialLink({@required String title, String url}) {
    return TextButton(onPressed: () {}, child: Text(title));
  }
}
