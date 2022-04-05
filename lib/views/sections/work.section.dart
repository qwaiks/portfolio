import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/models/project.dart';
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
        itemCount: DummyData.projects.length,
        itemBuilder: (ctx, index) {
          var project = Project.fromJson(DummyData.projects[index]);
          return WorkTile(
            paddingTop: index.isOdd ? 100 : 0,
            image: project.image,
            title: project.title,
            androidLink: project.links.android,
            iosLink: project.links.ios,
            desc: project.desc,
          );
        });

    final listViewWork = ListView.builder(
        shrinkWrap: true,
        itemCount: DummyData.projects.length,
        itemBuilder: (context, index) {
          var project = Project.fromJson(DummyData.projects[index]);
          return WorkTile(
            paddingTop: index.isOdd ? 100 : 0,
            image: project.image,
            title: project.title,
            androidLink: project.links.android,
            iosLink: project.links.ios,
            desc: project.desc,
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

  const WorkTile(
      {Key key,
      this.image,
      this.paddingTop,
      this.title,
      this.androidLink,
      this.desc,
      this.iosLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = isDeviceMobile(context: context);

    return Container(
      padding: EdgeInsets.only(top: paddingTop),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
          ),
          Utils.verticalSpacer(),
          Padding(
            padding: isMobile ? const EdgeInsets.all(30) : EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
