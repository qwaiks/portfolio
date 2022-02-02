import 'package:flutter/material.dart';
import 'package:portfolio_webapp/shared_widgets/custom_text_link.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextLink(
            text: "linkedin.com/in/kwaku-owusu-ansa/",
            onTap: () {},
          ),
          CustomTextLink(
            text: "github.com/qwaiks",
            onTap: () {},
          ),
          CustomTextLink(
            text: "twitter.com/ntim_cx",
            onTap: () {},
          ),
          CustomTextLink(
            text: "© 2021 , All rights",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
