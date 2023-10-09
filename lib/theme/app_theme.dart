import 'package:themexpert/themexpert.dart';
import 'package:flutter/material.dart';
import 'package:themexpert_showcase/tokens/app_colors.dart';
import 'package:themexpert_showcase/tokens/app_typography.dart';

class AppTheme extends BaseTheme {
  const AppTheme(
    super.context,
  );

  Color get primaryColorDark03 =>
      darkMode ? AppColors.tealLight01 : AppColors.tealDark03;

  Color get primaryColorDark02 =>
      darkMode ? AppColors.tealLight02 : AppColors.tealDark02;

  Color get primaryColorDark01 =>
      darkMode ? AppColors.tealLight01 : AppColors.tealDark01;

  Color get primaryColor => AppColors.tealBase;

  Color get primaryColorLight01 =>
      darkMode ? AppColors.tealDark01 : AppColors.tealLight01;

  Color get primaryColorLight02 =>
      darkMode ? AppColors.tealDark02 : AppColors.tealLight02;

  Color get primaryColorLight03 =>
      darkMode ? AppColors.tealDark03 : AppColors.tealLight03;

  Color get surfaceColor => primaryColorLight03;

  Color get featuredColor => primaryColor;

  Color get highEmphasisTextColor =>
      darkMode ? AppColors.neutralBlank : AppColors.neutralBase;

  Color get mediumEmphasisTextColor =>
      darkMode ? AppColors.neutralBlank : AppColors.neutralLight01;

  TextStyle get txBody => AppTypography.baseText.copyWith(
        color: highEmphasisTextColor,
      );

  TextStyle get txBodyMediumEmphasis => txBody.copyWith(
        color: mediumEmphasisTextColor,
      );

  TextStyle get txTitle => AppTypography.titleText.copyWith(
        color: highEmphasisTextColor,
      );

  TextStyle get txTitleBold => AppTypography.titleTextBold.copyWith(
        color: highEmphasisTextColor,
      );

  TextStyle get txOverline => AppTypography.baseTextOverline.copyWith(
        color: highEmphasisTextColor,
      );
}

AppTheme themeOf(BuildContext context) {
  return ThemeX.ofType<AppTheme>(context);
}
