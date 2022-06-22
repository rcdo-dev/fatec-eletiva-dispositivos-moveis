import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/app_module.dart';
import 'core/app_widget.dart';

void main() {
  /// Mostra as rotas do Flutter Modular.
  debugPrint(Modular.to.path);

  return runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
