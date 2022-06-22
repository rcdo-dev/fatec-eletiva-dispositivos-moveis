import 'package:app_crud/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'interface/interface_app_gradients.dart';

class AppGradientsDefault implements InterfaceAppGradients {
  @override
  Gradient get backgroundButton => LinearGradient(
        colors: [
          AppTheme.colors.secondary80,
          AppTheme.colors.roxoPalacio,
        ],
      );
}
