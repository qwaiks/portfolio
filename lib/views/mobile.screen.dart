import 'package:flutter/material.dart';
import 'package:portfolio_webapp/shared_widgets/custom_appbar.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [CustomAppBar(), Container()],
        ),
      ),
    );
  }
}
