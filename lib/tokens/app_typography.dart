import 'package:flutter/material.dart';

class AppTypography {
  static const TextStyle baseText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 1,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final titleText = baseText.copyWith(
    fontSize: 38,
    fontWeight: FontWeight.w600,
    height: 1.1,
  );

  static final titleTextBold = baseText.copyWith(
    fontSize: 38,
    fontWeight: FontWeight.w900,
    height: 1.1,
  );

  static final baseTextOverline = baseText.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );
}
