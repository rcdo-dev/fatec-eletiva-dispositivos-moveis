import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_theme.dart';
import 'interface/interface_app_text_styles.dart';

class AppTextStylesDefault implements InterfaceAppTextStyles {
  @override
  TextStyle get title700 => GoogleFonts.nunito(
        color: AppTheme.colors.text,
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get titlePurple700 => GoogleFonts.nunito(
        color: AppTheme.colors.secondary100,
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get title900 => GoogleFonts.nunito(
        color: AppTheme.colors.text,
        fontSize: 30.0,
        fontWeight: FontWeight.w800,
      );

  @override
  TextStyle get title500 => GoogleFonts.nunito(
        color: AppTheme.colors.text,
        fontSize: 18.0,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get text500 => GoogleFonts.nunito(
        color: AppTheme.colors.text,
        fontSize: 15.0,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get textWhite500 => GoogleFonts.nunito(
        color: AppTheme.colors.white,
        fontSize: 15.0,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get text400 => GoogleFonts.nunito(
        color: AppTheme.colors.text,
        fontSize: 15.0,
        fontWeight: FontWeight.w300,
      );
}
