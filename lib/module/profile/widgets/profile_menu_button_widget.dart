import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class ProfileMenuButtonWidget extends StatelessWidget {
  final String buttonLabel;

  const ProfileMenuButtonWidget({
    required this.buttonLabel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppTheme.colors.highlight,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              buttonLabel,
              style: AppTheme.styles.text500,
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
