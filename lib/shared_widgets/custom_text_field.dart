import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_webapp/config/theme.dart';
import 'package:portfolio_webapp/config/utils.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String labelText;
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;
  final bool isPasswordField;
  final TextEditingController controller;
  final bool enabled;
  final int maxLines;
  final int minLines;
  final Function onTap;
  final bool readOnly;
  final List<TextInputFormatter> inputFormatters;
  final String Function(String) validator;
  final Function(String) onChanged;
  final Widget suffixIcon;
  final Widget suffix;
  final Widget prefixIcon;
  final FocusNode focusNode;
  final double bottomPadding;
  final BorderRadius borderRadius;
  final Color borderColor;
  final bool removePadding;
  final bool autofocus;
  final bool noBorder;

  const CustomTextField({
    Key key,
    this.title,
    this.noBorder = false,
    this.labelText,
    this.autofocus = false,
    this.hintText,
    this.icon,
    this.keyboardType = TextInputType.text,
    this.isPasswordField = false,
    this.controller,
    this.enabled = true,
    this.maxLines = 1,
    this.minLines,
    this.onTap,
    this.readOnly = false,
    this.inputFormatters,
    this.validator,
    this.onChanged,
    this.suffixIcon,
    this.suffix,
    this.prefixIcon,
    this.focusNode,
    this.borderRadius = BorderRadius.zero,
    this.borderColor,
    this.removePadding = false,
    this.bottomPadding = 16.0,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final outlineBorder = OutlineInputBorder(
      borderRadius: (widget.borderRadius != null)
          ? widget.borderRadius
          : BorderRadius.circular(
          widget.maxLines > 1 && widget.minLines == null ? 16.0 : 13.0),
      borderSide: BorderSide(
        width: 0.0,
        color: (widget.borderColor != null)
            ? widget.borderColor
            : Colors.grey.withOpacity(0.4),
      ),
    );

    final inputDecoration = InputDecoration(
      isDense: false,
      filled: true,
      fillColor:const Color(0XFFEBEBEB),
      hintStyle: primaryTextTheme.bodyLarge.copyWith(color: Colors.black.withOpacity(0.4)),
      labelText: widget.labelText,
      labelStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.grey.withOpacity(0.5),
      ),
      hintText: widget.hintText,
      prefixIcon: widget.prefixIcon != null
          ? widget.prefixIcon
          : widget.icon != null
          ? Icon(
        widget.icon,
        color: Colors.grey.withOpacity(0.4),
      )
          : null,
      enabledBorder: widget.noBorder ? InputBorder.none : outlineBorder,
      border: widget.noBorder ? InputBorder.none : outlineBorder,
      suffixIcon: widget.suffixIcon,
      suffix: widget.isPasswordField
          ? _buildPasswordFieldVisibilityToggle()
          : widget.suffix,
      contentPadding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        Utils.verticalSpacer(space: 10),
        TextFormField(
          autofocus: widget.autofocus,
          focusNode: widget.focusNode,
          validator: widget.validator,
          decoration: inputDecoration,
          keyboardType: widget.keyboardType,
          style: primaryTextTheme.bodyLarge.copyWith(color: Colors.black),
          cursorColor: Theme.of(context).primaryColor,
          obscureText: widget.isPasswordField ? _obscureText : false,
          controller: widget.controller,
          enabled: widget.enabled,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          onTap: widget.onTap ?? null,
          readOnly: widget.readOnly ?? false,
          inputFormatters: widget.inputFormatters ?? null,
          onChanged: widget.onChanged,
        ),
        Utils.verticalSpacer(space: 10),
      ],
    );
  }

  Widget _buildPasswordFieldVisibilityToggle() {
    return InkWell(
      child: Text(
        _obscureText ? "Show" : "Hide",
      ),
      onTap: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
    );
  }

  Widget _buildTitle() {
    return widget.title == null
        ? Container()
        : Text(
      widget.title,
      style: TextStyle(color: Colors.black, fontSize: 16.0),
    );
  }
}
