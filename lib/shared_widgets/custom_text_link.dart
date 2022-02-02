import 'package:flutter/material.dart';

class CustomTextLink extends StatelessWidget {

  final String text;
  final Function onTap;

  const CustomTextLink({
    Key key,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(text),
    );
  }
}
