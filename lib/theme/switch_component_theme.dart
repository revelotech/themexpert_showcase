import 'package:flutter/material.dart';
import 'package:themexpert_showcase/theme/app_theme.dart';
import 'package:themexpert_showcase/tokens/app_colors.dart';

class SwitchComponentTheme extends AppTheme {
  const SwitchComponentTheme(
    super.context,
  );

  @override
  Color get surfaceColor => AppColors.neutralBlank;

  List<BoxShadow>? get shadow => [
        BoxShadow(
          color: primaryColorDark03,
          blurRadius: 1,
          offset: const Offset(0, 1),
        )
      ];

  BorderRadius get borderRadius => BorderRadius.circular(200);
}
