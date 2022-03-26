import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/size_config.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';

class MainSection extends StatelessWidget {
  const MainSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 670,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Flexible(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(top: 100, right: 40),
                      child: Image.asset(AppImages.portfolioImage,
                          fit: BoxFit.cover, height: double.infinity),
                    )),
                Container(
                  width: 3,
                  color: Colors.white,
                ),
                Flexible(
                  flex: 3,
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(
                              top: 60, bottom: 60, left: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    child: Text(
                                      AppString.name,
                                      style: primaryTextTheme.headlineLarge
                                          .copyWith(
                                              fontSize: SizeConfig.screenWidth *
                                                          0.05 <
                                                      70
                                                  ? 60
                                                  : 70),
                                    ),
                                  ),
                                  Utils.horizontalSpacer(),
                                  Divider(
                                    thickness: 30,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              Flexible(
                                  child: Text(
                                AppString.jobTitle,
                                style: primaryTextTheme.headlineLarge.copyWith(
                                    fontSize: SizeConfig.screenWidth * 0.05 < 70
                                        ? 60
                                        : 70),
                              )),
                            ],
                          ),
                        ),
                        flex: 3,
                      ),
                      Container(
                        height: 3,
                        color: Colors.white,
                      ),
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(top: 30, left: 40),
                          child: Column(
                            children: [
                              Flex(
                                direction: Axis.horizontal,
                                children: [
                                  Flexible(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          Text(AppString.professionalDesc,
                                              style: primaryTextTheme.bodyLarge
                                                  .copyWith(height: 1.3)),
                                          Utils.verticalSpacer(),
                                          Text(AppString.professionalDescCont,
                                              style: primaryTextTheme.bodyLarge
                                                  .copyWith(height: 1.3))
                                        ],
                                      )),
                                  Flexible(
                                    flex: 1,
                                    child: Container(),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
