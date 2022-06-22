import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../libraries/library_images.dart' as image;

class SplashPage extends StatefulWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => Modular.to.navigate(
        '/loginModule/',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        image.splash,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
