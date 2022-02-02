import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/views/sections/footer.section.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final aboutText = Text(
      "Together we can do \namazing things.",
      textAlign: TextAlign.center,
      style: AppTextTheme.extraLage,
    );

    final link = TextButton(
        onPressed: () {},
        child: Text(
          "Get in touch",
          style: AppTextTheme.extraLage,
        ));

    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children:[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [aboutText, link],
            ),
          ),
          FooterSection(),
        ]
      ),
    );
  }
}
