import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Divider(
            color: Colors.white,
            thickness: 3,
            height: 0,
            endIndent: 0,
            indent: 0,
          ),
          Utils.verticalSpacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '© ntim_cx',
                style: primaryTextTheme.bodyMedium,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'contact me',
                      style: primaryTextTheme.bodyMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'linkedin',
                      style: primaryTextTheme.bodyMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'twitter',
                      style: primaryTextTheme.bodyMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'email',
                      style: primaryTextTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
              Text(
                'terms',
                style: primaryTextTheme.bodyMedium,
              )
            ],
          ),
        ],
      ),
    );
  }
}
