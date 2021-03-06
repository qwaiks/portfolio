import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:widget_marquee/widget_marquee.dart';

class CompanySection extends StatelessWidget {

  const CompanySection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool isMobile = isDeviceMobile(context: context);
    bool isTablet = isDeviceTablet(context: context);

    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Marquee(
        delayDuration: Duration(seconds: 0),
        loopDuration: Duration(seconds: 20),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: DummyData.companies.length,
            itemBuilder: (ctx, index) {
              return Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Text(
                    DummyData.companies[index],
                    style: index.isEven
                        ? primaryTextTheme.displayLarge.copyWith(
                            fontSize: isMobile
                                ? displayLargeMobile
                                : displayLargeWeb)
                        : primaryTextTheme.displayLarge.copyWith(
                            fontSize: isMobile
                                ? displayLargeMobile
                                : displayLargeWeb,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 2
                              ..color = Colors.white),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
