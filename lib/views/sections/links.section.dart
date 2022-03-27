import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/shared_widgets/contact_modal.dart';
import 'package:portfolio_webapp/shared_widgets/section_header.dart';
import 'package:side_sheet/side_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

class LinksSection extends StatelessWidget {


  const LinksSection({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = isDeviceMobile(context: context);
    bool isTablet = isDeviceTablet(context: context);

    final links =Expanded(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: ()=> SideSheet.right(body: ContactMeModal(), context: context, width: SizeConfig.screenWidth),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'Get in touch',
                style: primaryTextTheme.headlineMedium.copyWith(
                    fontSize: isMobile ? headlineMediumMobile : headlineMediumWeb),
              ),
            ),
          ),
          InkWell(
            onTap: ()=> launch(AppString.resumeLink),
            child: Text(
              'View Resume',
              style: primaryTextTheme.headlineMedium.copyWith(
                  fontSize: isMobile ? headlineMediumMobile : headlineMediumWeb),
            ),
          ),
          Text(
            'Blog',
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
          const SectionHeader(
            title: 'Links',
          ),
          links
        ],
      ),
    );
  }
}
