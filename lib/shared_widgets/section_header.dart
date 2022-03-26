import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/theme.dart';

class SectionHeader extends StatelessWidget {
  final bool isMobile;
  final String title;

  const SectionHeader({Key key, @required this.title, this.isMobile = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: isMobile
              ? const EdgeInsets.symmetric(horizontal: 24.0)
              : EdgeInsets.zero,
          child: Text(
            title,
            style: primaryTextTheme.headlineLarge.copyWith(
                fontSize: isMobile ? headlineLargeMobile : headlineLargeWeb),
          ),
        ),
        Divider(
          height: isMobile ? 50 : 100,
          color: Colors.white,
          thickness: 2,
        ),
      ],
    );
  }
}
