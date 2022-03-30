import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/shared_widgets/custom_chip.dart';
import 'package:portfolio_webapp/shared_widgets/section_header.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = isDeviceMobile(context: context);
    bool isTablet = isDeviceTablet(context: context);

    final gridViewWork = GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisCount: 2,
            crossAxisSpacing: 150,
            mainAxisExtent:
                MediaQuery.of(context).size.width < 1350 ? 900 : 1200),
        itemCount: 5,
        itemBuilder: (ctx, index) {
          return WorkTile(
            paddingTop: index.isOdd ? 100 : 0,
            image: AppImages.waCommImage,
            title: 'GrainMate Mobile',
            isMobile: isMobile,
            androidLink: 'adonaodina',
            iosLink: 'poamdoaimd',
            desc:
                'GrainMate app is supercharging African farmers and agribusinesses with the tools and resources they need to get to the next level ⚡️',
          );
        });

    final listViewWork = ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) {
          return WorkTile(
            paddingTop: index.isOdd ? 100 : 0,
            image: AppImages.waCommImage,
            title: 'GrainMate Mobile',
            isMobile: isMobile,
            desc:
                'GrainMate app is supercharging African farmers and agribusinesses with the tools and resources they need to get to the next level ⚡️',
          );
        });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Recent works',
        ),
        Utils.verticalSpacer(),
        isMobile ? listViewWork : gridViewWork
      ],
    );
  }
}

class WorkTile extends StatelessWidget {
  final String image;
  final String title;
  final String desc;
  final String androidLink;
  final String iosLink;
  final double paddingTop;
  final bool isMobile;

  const WorkTile(
      {Key key,
      this.image,
      this.paddingTop,
      this.title,
      this.androidLink,
      this.desc,
      this.isMobile,
      this.iosLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: paddingTop),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
          ),
          Utils.verticalSpacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                  visible: androidLink != null && androidLink.isNotEmpty,
                  child: CustomChip(
                    title: 'Android',
                    link: androidLink,
                  )),
              Visibility(
                visible: iosLink != null && iosLink.isNotEmpty,
                child: CustomChip(
                  title: 'iOS',
                  link: iosLink,
                ),
              )
            ],
          ),
          Utils.verticalSpacer(),
          Padding(
            padding: isMobile ? const EdgeInsets.all(30) : EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: primaryTextTheme.titleLarge.copyWith(
                      fontSize: isMobile ? titleLargeMobile : titleLargeWeb),
                ),
                Utils.verticalSpacer(),
                Text(
                  desc,
                  style: primaryTextTheme.bodyLarge,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
