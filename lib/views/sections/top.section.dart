import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = Text(
      AppString.welcomeName,
      style: AppTextTheme.extraLage
          .copyWith(fontSize: getProportionateScreenHeight(100)),
    );
    final desc = SizedBox(
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

    final background = Align(
      alignment: Alignment.topRight,
      child: Container(
        width: getProportionateScreenWidth(1119),
        height: getProportionateScreenHeight(713),
        color: const Color(0XFFF6F6F6),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(child: appBar),
            Flexible(
              child: Image.asset(
                AppImages.portfolioImage,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );

    final downloadCVButton = MaterialButton(
      minWidth: getProportionateScreenWidth(353),
      height: getProportionateScreenHeight(113),
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
              style: AppTextTheme.button.copyWith(
                  letterSpacing: 8.3,
                  fontSize: getProportionateScreenHeight(24)),
            ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      color: Colors.pink.shade50,
    );

    final mainDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        name,
        Utils.verticalSpacer(),
        socialsList,
        Utils.verticalSpacer(),
        desc,
        Utils.verticalSpacer(space: getProportionateScreenHeight(62)),
        downloadCVButton
      ],
    );

    return Container(
        width: double.infinity,
        child: Stack(
          children: [background, mainDetails],
        ));
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
