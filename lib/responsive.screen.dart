import 'package:flutter/material.dart';
import 'package:portfolio_webapp/config/constants.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';
import 'package:portfolio_webapp/shared_widgets/custom_button.widget.dart';

class Responsive extends StatefulWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key key,
    @required this.mobile,
    @required this.tablet,
    @required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      isDeviceMobile(context: context);

  static bool isTablet(BuildContext context) =>
      isDeviceTablet(context: context);

  static bool isDesktop(BuildContext context) => isDeviceWeb(context: context);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () => showIncompletePrompt(context));
}

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return widget.desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 650) {
          return widget.tablet;
        }
        // Or less then that we called it mobile
        else {
          return widget.mobile;
        }
      },
    );
  }

  void showIncompletePrompt(context) {
    showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 400),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Align(
            alignment: Alignment.bottomCenter,
            child: Wrap(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 500,
                    padding: const EdgeInsets.all(50),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text(AppString.websiteIncompleteTitle,
                            style: primaryTextTheme.bodyLarge.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                        Utils.verticalSpacer(),
                        Text(AppString.websiteIncompleteDecs,
                            textAlign: TextAlign.center,
                            style: primaryTextTheme.bodyLarge
                                .copyWith(color: Colors.black)),
                        Utils.verticalSpacer(),
                        CustomButton(
                          width: 200,
                          onPressed: () => Navigator.pop(context),
                          text: 'Yes, I understand',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }
}
