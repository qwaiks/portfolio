import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/utils.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.75;
    final fullHeight = MediaQuery.of(context).size.height;

    final name = Text(
      AppString.welcomeName,
      style: Theme.of(context)
          .textTheme
          .headline3
          .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
    );
    final desc = SizedBox(
      width: (width / 2) * 0.9,
      child: Text(
        AppString.welcomeDesc,
        style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.w300, height: 2.0),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Container(
            width: width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //const CustomAppBar(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [name, Utils.verticalSpacer(space: 50), desc],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(300),
                      child: Image.network(
                        "https://static01.nyt.com/images/2021/11/18/opinion/17manjoo1/17manjoo1-mediumThreeByTwo440.jpg",
                        fit: BoxFit.cover,
                        height: (width / 2) * 0.6,
                        width: (width / 2) * 0.6,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
