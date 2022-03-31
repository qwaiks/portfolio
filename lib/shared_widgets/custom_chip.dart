import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomChip extends StatelessWidget {
  final String title;
  final String link;

  const CustomChip({Key key, this.title, this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( right: 10),
      child: GestureDetector(
        onTap: () {
          launch(link, forceWebView: true, forceSafariVC: true);
        },
        child: Chip(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
          label: Text(title),
          backgroundColor: Colors.white,
          labelStyle: primaryTextTheme.bodyMedium.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
