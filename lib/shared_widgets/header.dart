import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/shared_widgets/contact_modal.dart';
import 'package:side_sheet/side_sheet.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'KWAKU OWUSU-ANSA',
                style: primaryTextTheme.bodyLarge
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              InkWell(
                onTap: (){
                  SideSheet.right(
                      body: ContactMeModal(),
                      context: context
                  );
                },
                child: Text(
                  'contact me',
                  style: primaryTextTheme.bodyLarge
                      .copyWith(fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
        ),
        Utils.verticalSpacer(),
        const Divider(
          color: Colors.white,
          thickness: 3,
          height: 0,
          endIndent: 0,
          indent: 0,
        ),
      ],
    );
  }
}
