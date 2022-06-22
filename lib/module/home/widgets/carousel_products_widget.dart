import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class CarouselProductsWidget extends StatefulWidget {
  final List<Widget> items;

  const CarouselProductsWidget({
    required this.items,
    Key? key,
  }) : super(key: key);

  @override
  State<CarouselProductsWidget> createState() => _CarouselProductsWidgetState();
}

class _CarouselProductsWidgetState extends State<CarouselProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.55,
      ),
      items: widget.items,
    );
  }
}
