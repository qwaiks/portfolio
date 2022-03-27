import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/shared_widgets/contact_modal.dart';
import 'package:side_sheet/side_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = isDeviceMobile(context: context);
    bool isTablet = isDeviceTablet(context: context);

    final webFooter = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '© ntim_cx',
          style: primaryTextTheme.bodyMedium,
        ),
        Row(
          children: [
            externalLink(
                title: 'email',
                padding: const EdgeInsets.symmetric(horizontal: 30),
                onTap: () => launch(
                    Uri(scheme: 'mailto', path: AppString.emailLink)
                        .toString())),
            externalLink(
                title: 'twitter',
                padding: const EdgeInsets.symmetric(horizontal: 30),
                onTap: () => launch(AppString.twitterLink,
                    forceWebView: true, forceSafariVC: true)),
            externalLink(
                title: 'linkedIn',
                padding: const EdgeInsets.symmetric(horizontal: 30),
                onTap: () => launch(AppString.linkedInLink,
                    forceWebView: true, forceSafariVC: true)),
          ],
        ),
        externalLink(
            title: AppString.contactMe,
            onTap: () => SideSheet.right(
                body: ContactMeModal(),
                context: context,
                width: isMobile ? SizeConfig.screenWidth : SizeConfig.screenWidth * 0.5))
      ],
    );

    final mobileFooter = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                '© ntim_cx',
                style: primaryTextTheme.bodyMedium,
              ),
            ),
            externalLink(
                title: 'twitter',
                onTap: () => launch(AppString.twitterLink,
                    forceWebView: true, forceSafariVC: true)),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            externalLink(
                title: 'email',
                onTap: () => launch(
                    Uri(scheme: 'mailto', path: AppString.emailLink)
                        .toString())),
            externalLink(
                title: 'linkedIn',
                onTap: () => launch(AppString.linkedInLink,
                    forceWebView: true, forceSafariVC: true)),
            externalLink(
                title: AppString.contactMe,
                onTap: () => SideSheet.right(
                    body: ContactMeModal(),
                    context: context,
                    width: isMobile ? SizeConfig.screenWidth : SizeConfig.screenWidth * 0.5))
          ],
        ),
      ],
    );

    return Container(
      child: Column(
        children: [
          const Divider(
            color: Colors.white,
            thickness: 2,
            height: 0,
            endIndent: 0,
            indent: 0,
          ),
          Utils.verticalSpacer(),
          isMobile ? mobileFooter : webFooter
        ],
      ),
    );
  }

  Widget externalLink({Function onTap, String title, EdgeInsets padding = const EdgeInsets.symmetric(vertical: 8)}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Text(
          title,
          style: primaryTextTheme.bodyMedium,
        ),
      ),
    );
  }
}
