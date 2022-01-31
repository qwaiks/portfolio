import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = SizeConfig();
    size.init(context);

    const name = Text(
      AppString.welcomeName,
      style: AppTextTheme.extraLage,
    );
    final  desc = SizedBox(
      width: 650,
      child: Text(
        AppString.welcomeDesc,
        style: AppTextTheme.bodyText,
      ),
    );

    final socialsList = SizedBox(
      width: 270,
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
      width: 1119,
      height:713,
      color: const Color(0XFFF6F6F6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(child: appBar),
          Flexible(child: Image.asset(
            AppImages.portfolioImage,
            height: double.infinity,
            fit: BoxFit.cover,
          ),)
        ],
      ),
    );

    final downloadCVButton = SizedBox(
      width: 353,
      height: 113,
      child: MaterialButton(
        elevation: 0.0,
        onPressed: () {},
        disabledColor: Colors.grey.shade500,
        disabledTextColor: Colors.white,
        disabledElevation: 0.0,
        child: false
            ? const CircularProgressIndicator.adaptive(
          backgroundColor: Colors.white,
        )
            : Text(
          "Download CV".toUpperCase(),
          style: AppTextTheme.button.copyWith(letterSpacing: 8.3,),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        color: Colors.pink.shade50,
      ),
    );

    return  Stack(
      children: [
        Align(alignment: Alignment.topRight, child: background),
        Positioned(
          top: 200,
          left: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              name,
              Utils.verticalSpacer(),
              socialsList,
              Utils.verticalSpacer(),
              desc,
              Utils.verticalSpacer(space: 62),
              downloadCVButton

            ],
          ),
        )
      ],
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
