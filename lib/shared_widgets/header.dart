import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/shared_widgets/contact_modal.dart';
import 'package:portfolio_webapp/shared_widgets/side_sheet.widget.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = isDeviceMobile(context: context);
    bool isTablet = isDeviceTablet(context: context);
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppString.name,
                style: primaryTextTheme.bodyLarge
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              InkWell(
                onTap: () {
                  SideSheet.right(
                      body: ContactMeModal(),
                      context: context,
                      width: isMobile
                          ? SizeConfig.screenWidth
                          : SizeConfig.screenWidth * 0.5);
                },
                child: Text(
                  AppString.contactMe,
                  style: primaryTextTheme.bodyLarge
                      .copyWith(fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
        ),
        Utils.verticalSpacer(),
        const Divider(
          color: Colors.white,
          thickness: 3,
          height: 0,
          endIndent: 0,
          indent: 0,
        ),
      ],
    );
  }
}
