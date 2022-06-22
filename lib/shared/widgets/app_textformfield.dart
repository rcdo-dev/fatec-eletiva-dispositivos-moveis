import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final String? labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final Color? cursorColor;
  final Color colorBorderSide;

  const AppTextFormField({
    this.labelText,
    this.labelStyle,
    this.hintText,
    this.cursorColor,
    this.colorBorderSide = const Color(0xFF000000),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: cursorColor,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        labelStyle: labelStyle,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: colorBorderSide,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: colorBorderSide,
          ),
        ),
      ),
    );
  }
}
