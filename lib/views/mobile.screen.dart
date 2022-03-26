import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/shared_widgets/footer.dart';
import 'package:portfolio_webapp/shared_widgets/header.dart';
import 'package:portfolio_webapp/views/sections/company.section.dart';
import 'package:portfolio_webapp/views/sections/links.section.dart';
import 'package:portfolio_webapp/views/sections/main.section.dart';
import 'package:portfolio_webapp/views/sections/work.section.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = SizeConfig();
    size.init(context);
    final main = Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
        maxWidth: double.infinity
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Row(
           children: [
             Flexible(
               flex: 2,
               child: Text(
                 AppString.name,
                 style: primaryTextTheme.headlineLarge.copyWith(
                     fontSize:  headlineLargeMobile),
               ),
             ),

           ],
         ),
          Utils.verticalSpacer(space: 8),
          Text(AppString.jobTitle,style: primaryTextTheme.headlineLarge.copyWith(
              fontSize:  headlineLargeMobile), ),
          Utils.verticalSpacer(space: 16),
          Image.asset(AppImages.portfolioImage),
          Utils.verticalSpacer(space: 16),
          Text(AppString.professionalDesc, style:  primaryTextTheme.bodyLarge,),
          Utils.verticalSpacer(space: 24),
          Text(AppString.professionalDescCont,style:  primaryTextTheme.bodyLarge,),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(vertical: 16),
        child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16), child: Header()),
            main,
            WorkSection(isMobile: true),
            CompanySection(isMobile: true),
            LinksSection(isMobile: true),
            Footer()
          ],
        ),
      ),
    );
  }
}
