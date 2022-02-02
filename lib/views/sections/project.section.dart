import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/models/project.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List projectData = [
      {
        "name": "WaCommunicate",
        "desc":
            "Workplace platform mobile app designed to provide long lasting feature. adij aod o ado adoa oi s ad apoal do ad s jao ",
        "tags": ["Flutter", "Codemagic", "Github"],
        "image": AppImages.waCommImage,
        "links": {
          "android": "",
          "ios": "",
        }
      },
      {
        "name": "WaCommunicate",
        "desc":
            "Workplace platform mobile app designed to provide long lasting feature. adij aod o ado adoa oi s ad apoal do ad s jao ",
        "tags": ["Flutter", "Codemagic", "Github"],
        "image": AppImages.waCommImage,
        "links": {
          "android": "",
          "ios": "",
        }
      },
    ];

    final projectWidget = ListView.separated(
      shrinkWrap: true,
      itemCount: projectData.length,
      itemBuilder: (context, index) {
        var project = Project.fromJson(projectData[index]);
        return !index.isOdd
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: ClipRRect(
                        child: Image.asset(
                          project.image,
                          width: getProportionateScreenWidth(690),
                          height: getProportionateScreenHeight(590),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Utils.horizontalSpacer(space: 150),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(project.name, style: AppTextTheme.headerTitle),
                        Utils.verticalSpacer(space: 20),
                        Row(
                          children: [
                            ...project.tags.map((e) => Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Chip(
                                    backgroundColor: Colors.grey.shade100,
                                    label: Text(
                                      e,
                                      style: AppTextTheme.caption,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Utils.verticalSpacer(space: 20),
                        Container(
                          child: Text(
                            project.desc,
                            style: AppTextTheme.bodyText,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          project.name,
                          style: AppTextTheme.headerTitle,
                        ),
                        Utils.verticalSpacer(space: 20),
                        Row(
                          children: [
                            ...project.tags.map((e) => Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Chip(
                                    backgroundColor: Colors.grey.shade100,
                                    label: Text(
                                      e,
                                      style: AppTextTheme.caption,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Utils.verticalSpacer(space: 20),
                        Container(
                          child:
                              Text(project.desc, style: AppTextTheme.bodyText),
                        )
                      ],
                    ),
                  ),
                  Utils.horizontalSpacer(space: 150),
                  Flexible(
                    child: ClipRRect(
                        child: Image.asset(
                          project.image,
                          width: getProportionateScreenWidth(690),
                          height: getProportionateScreenHeight(590),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Utils.verticalSpacer(space: 30);
      },
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 119),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: AppTextTheme.sectionTitle,
          ),
          Utils.verticalSpacer(space: 52),
          projectWidget
        ],
      ),
    );
  }
}
