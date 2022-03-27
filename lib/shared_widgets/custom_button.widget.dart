import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';

class CustomButton extends StatelessWidget {
  final bool isLoading, disabled;
  final String icon;
  final double width;
  final Function onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
  final double radius;
  final bool isTextButton;

  const CustomButton(
      {Key key,
      this.radius = 13.0,
      this.isLoading = false,
      this.icon,
      this.width,
      this.onPressed,
      this.text,
      this.disabled = false,
      this.isTextButton = false,
      this.backgroundColor = Colors.black,
      this.textColor = Colors.white,
      this.iconColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textWidget = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon == null
            ? Container()
            : SvgPicture.asset(
                icon,
                color: iconColor,
              ),
        icon == null ? Container() : Utils.horizontalSpacer(space: 16),
        Text(
          text,
          style: primaryTextTheme.bodyLarge.copyWith(color: textColor),
        ),
      ],
    );

    return isTextButton
        ? TextButton(
            onPressed: onPressed,
            child: textWidget,
          )
        : SizedBox(
            width: width ?? MediaQuery.of(context).size.width,
            height: 51,
            child: MaterialButton(
              elevation: 0.0,
              onPressed: disabled ? null : onPressed,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.white,
              disabledElevation: 0.0,
              child: isLoading
                  ? const CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.white,
                    )
                  : textWidget,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              color: backgroundColor,
            ),
          );
  }
}
