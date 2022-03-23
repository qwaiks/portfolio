import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';

class LinksSection extends StatelessWidget {
  const LinksSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Links',
              style: primaryTextTheme.headlineLarge,
            ),
          ),
          const Divider(
            height: 100,
            color: Colors.white,
            thickness: 3,
          ),
          Text(
            'Get in touch',
            style: primaryTextTheme.headlineMedium,
          ),
          Utils.verticalSpacer(space: 40),
          Text(
            'View Resume',
            style: primaryTextTheme.headlineMedium,
          ),
          Utils.verticalSpacer(space: 40),
          Text(
            'UX Campus',
            style: primaryTextTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
