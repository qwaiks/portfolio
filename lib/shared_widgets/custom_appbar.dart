import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/responsive.screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          !Responsive.isMobile(context)
              ? const Text(AppConstants.name)
              : Container(),
          !Responsive.isMobile(context)
              ? Utils.horizontalSpacer()
              : Container(),
          TextButton(onPressed: () {}, child: const Text(AppString.portfolio)),
          Utils.horizontalSpacer(),
          TextButton(onPressed: () {}, child: const Text(AppString.contactMe)),
          Utils.horizontalSpacer(),
          TextButton(onPressed: () {}, child: const Text(AppString.resume)),
        ],
      ),
    );
  }
}
