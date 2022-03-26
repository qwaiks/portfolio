import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/shared_widgets/section_header.dart';

class LinksSection extends StatelessWidget {
  final bool isMobile;

  const LinksSection({Key key, this.isMobile = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final links =Expanded(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get in touch',
            style: primaryTextTheme.headlineMedium.copyWith(
                fontSize: isMobile ? headlineMediumMobile : headlineMediumWeb),
          ),
          Utils.verticalSpacer(space: 40),
          Text(
            'View Resume',
            style: primaryTextTheme.headlineMedium.copyWith(
                fontSize: isMobile ? headlineMediumMobile : headlineMediumWeb),
          ),
          Utils.verticalSpacer(space: 40),
          Text(
            'UX Campus',
            style: primaryTextTheme.headlineMedium.copyWith(
                fontSize: isMobile ? headlineMediumMobile : headlineMediumWeb),
          ),
        ],
      ),
    ));

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
            title: 'Links',
            isMobile: isMobile,
          ),
          links
        ],
      ),
    );
  }
}
