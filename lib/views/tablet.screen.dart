import 'package:flutter/material.dart';
import 'package:portfolio_webapp/shared_widgets/contact_modal.dart';
import 'package:portfolio_webapp/shared_widgets/custom_appbar.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ContactMeModal(),
      ),
    );
  }
}
