import 'package:app_crud/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MenuButtonsWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const MenuButtonsWidget({
    required this.title,
    required this.children,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: AppTheme.styles.text400,
        ),
        Column(
          children: children,
        ),
      ],
    );
  }
}
