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
