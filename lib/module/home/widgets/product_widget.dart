import 'package:flutter/material.dart';

import 'package:app_crud/theme/app_theme.dart';

class ProductWidget extends StatelessWidget {
  final String imageAsset;
  final String productName;
  final String store;
  final String price;

  const ProductWidget({
    required this.imageAsset,
    required this.productName,
    required this.store,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(imageAsset),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          productName,
          style: AppTheme.styles.title500,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          store,
          style: AppTheme.styles.text400,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          price,
          style: AppTheme.styles.titlePurple700,
        ),
      ],
    );
  }
}
