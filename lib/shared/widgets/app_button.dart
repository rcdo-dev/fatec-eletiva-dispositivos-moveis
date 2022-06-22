import 'package:app_crud/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? textButton;
  final double sizeWidth;
  final double sizeHeight;
  final TextStyle? textButtonStyle;
  final Gradient? gradient;

  const AppButton({
    Key? key,
    this.onPressed,
    this.textButton,
    this.sizeWidth = 100,
    this.sizeHeight = 40,
    this.textButtonStyle,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: sizeWidth,
        height: sizeHeight,
        decoration: BoxDecoration(
          gradient: gradient,
          border: Border.all(
            color: AppTheme.colors.highlight,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Text(
            textButton.toString(),
            style: textButtonStyle,
          ),
        ),
      ),
    );
  }
}
