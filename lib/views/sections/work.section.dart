import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/models/work.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List workData = [
      {
        "name": "BroadSpectrum Ltd",
        "date": "January 2022 • PRESENT",
        "desc":
            "Workplace platform mobile app designed to provide long lasting feature. adij aod o ado adoa oi s ad apoal do ad s jao ",
        "tags": ["Flutter", "Codemagic", "Github"]
      },
      {
        "name": "Walulel Ltd",
        "date": "Febuary 2021 • 12 months",
        "desc":
            "Workplace platform mobile app designed to provide long lasting feature. h da aond oa  aioa oai s asi ao d aoia so adoi ajd ad a",
        "tags": ["Flutter", "Codemagic", "Github"]
      },
      {
        "name": "Interactive Edge Ltd",
        "date": "Febuary 2021 • 12 months",
        "desc":
            "Workplace platform mobile app designed to provide long lasting feature.  aod oa da ioaj doa do ai a adon add aj",
        "tags": ["Flutter", "Codemagic", "Github"]
      }
    ];

    final workWidget = ListView.separated(
        shrinkWrap: true,
        itemCount: workData.length,
        itemBuilder: (context, index) {
          var work = Work.fromJson(workData[index]);
          return SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Flexible(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          work.name,
                          style: AppTextTheme.header,
                        ),
                        Utils.verticalSpacer(space: 8),
                        Text(
                          work.date.toUpperCase(),
                          style: AppTextTheme.bodyText
                              .copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          work.desc,
                          style: AppTextTheme.bodyText,
                        ),
                        Utils.verticalSpacer(space: 8),
                        Row(
                          children: [
                            ...work.tags.map((e) => Padding(
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
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) {
          return Utils.verticalSpacer(space: 30);
    },);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 119),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Work",
            style: AppTextTheme.sectionTitle,
          ),
          Utils.verticalSpacer(space: 52),
          workWidget
        ],
      ),
    );
  }
}
