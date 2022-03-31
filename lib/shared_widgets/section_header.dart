import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({Key key, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool isMobile = isDeviceMobile(context: context);
    bool isTablet = isDeviceTablet(context: context);

    return Padding(
      padding: isMobile
          ? const EdgeInsets.symmetric(horizontal: 16.0)
          : EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: primaryTextTheme.headlineLarge.copyWith(
                fontSize: isMobile ? headlineLargeMobile : headlineLargeWeb),
          ),
          Divider(
            height: isMobile ? 50 : 100,
            color: Colors.white,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
