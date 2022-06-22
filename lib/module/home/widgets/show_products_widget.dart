import 'package:app_crud/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'carousel_products_widget.dart';

class ShowProductsWidget extends StatelessWidget {
  final String titleProducts;
  final CarouselProductsWidget carousel;

  const ShowProductsWidget({
    required this.titleProducts,
    required this.carousel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              titleProducts,
              style: AppTheme.styles.text500,
            ),
            Text(
              'Ver tudo',
              style: AppTheme.styles.text400,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        carousel,
      ],
    );
  }
}
