import 'package:flutter/material.dart';

class Utils {
  static Widget verticalSpacer({space = 20}) {
    return SizedBox(
      height: space,
    );
  }

  static Widget horizontalSpacer({space = 20}) {
    return SizedBox(
      width: space,
    );
  }
}

bool isDeviceMobile({BuildContext context}) {
  return MediaQuery.of(context).size.width < 650;
}

bool isDeviceTablet({BuildContext context}) {
  return MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;
}

bool isDeviceWeb({BuildContext context}) {
  return MediaQuery.of(context).size.width >= 1100;
}
