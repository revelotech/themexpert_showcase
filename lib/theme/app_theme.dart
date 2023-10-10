import 'package:themexpert/themexpert.dart';
import 'package:flutter/material.dart';
import 'package:themexpert_showcase/tokens/app_colors.dart';
import 'package:themexpert_showcase/tokens/app_typography.dart';

class AppTheme extends BaseTheme {
  const AppTheme(
    super.context,
  );

  Color get primaryColorDark03 =>
      darkMode ? AppColors.salmonLight03 : AppColors.salmonDark03;

  Color get primaryColorDark02 =>
      darkMode ? AppColors.salmonLight02 : AppColors.salmonDark02;

  Color get primaryColorDark01 =>
      darkMode ? AppColors.salmonLight01 : AppColors.salmonDark01;

  Color get primaryColor => AppColors.salmonBase;

  Color get primaryColorLight01 =>
      darkMode ? AppColors.salmonDark01 : AppColors.salmonLight01;

  Color get primaryColorLight02 =>
      darkMode ? AppColors.salmonDark02 : AppColors.salmonLight02;

  Color get primaryColorLight03 =>
      darkMode ? AppColors.salmonDark03 : AppColors.salmonLight03;

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
