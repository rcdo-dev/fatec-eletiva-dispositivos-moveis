import 'package:app_crud/theme/app_gradients/app_gradients_default.dart';
import 'package:app_crud/theme/app_gradients/interface/interface_app_gradients.dart';

import 'app_colors/app_colors_default.dart';
import 'app_colors/interface/interface_app_colors.dart';
import 'app_text_styles/app_text_styles_default.dart';
import 'app_text_styles/interface/interface_app_text_styles.dart';

class AppTheme {
  static InterfaceAppColors get colors => AppColorsDefault();
  static InterfaceAppTextStyles get styles => AppTextStylesDefault();
  static InterfaceAppGradients get gradients => AppGradientsDefault();
}
