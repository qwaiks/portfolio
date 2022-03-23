import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';

import '../../config/constants.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Recent Work',
            style: primaryTextTheme.headlineLarge,
          ),
        ),
        const Divider(
          height: 100,
          color: Colors.white,
          thickness: 3,
        ),
        Utils.verticalSpacer(),
        GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.8,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
            ),
            itemCount: 5,
            itemBuilder: (ctx, index) {
              return WorkTile(
                paddingTop: index.isOdd ? 100 : 0,
                image: AppImages.waCommImage,
                title: 'GrainMate Mobile',
                desc:
                    'GrainMate app is supercharging African farmers and agribusinesses with the tools and resources they need to get to the next level ⚡️',
              );
            })
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
    return Container(
      padding: EdgeInsets.only(left: 70, right: 70, top: paddingTop),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          Utils.verticalSpacer(),
          Text(
            title,
            style: primaryTextTheme.titleLarge,
          ),
          Utils.verticalSpacer(),
          Text(
            desc,
            style: primaryTextTheme.bodyLarge,
          )
        ],
      ),
    );
  }
}
