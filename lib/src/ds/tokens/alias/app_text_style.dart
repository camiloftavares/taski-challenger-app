import 'package:flutter/material.dart';
import 'package:taski_challenger_app/src/ds/tokens/alias/app_colors.dart';
import '../globals/global_typography.dart';

class AppTextStyle {
  static const TextStyle heading = TextStyle(
    fontFamily: GlobalTypography.fontFamilyPrimary,
    fontSize: GlobalTypography.fontSizeLarge,
    fontWeight: GlobalTypography.fontWeightBold,
    color: AppColors.textPrimary
  );

  static const TextStyle body = TextStyle(
    fontFamily: GlobalTypography.fontFamilyPrimary,
    fontSize: GlobalTypography.fontSizeMedium,
    fontWeight: GlobalTypography.fontWeightMedium,
    color: AppColors.textPrimary
  );

  static const TextStyle subtitle = TextStyle(
    fontFamily: GlobalTypography.fontFamilyPrimary,
    fontSize: GlobalTypography.fontSizeSmall,
    fontWeight: GlobalTypography.fontWeightRegular,
    color: AppColors.textSecondary
  );

  static const TextStyle button = TextStyle(
    fontFamily: GlobalTypography.fontFamilyPrimary,
    fontSize: GlobalTypography.fontSizeExtraNedium,
    fontWeight: GlobalTypography.fontWeightMedium,
    color: AppColors.primary
  );

  static const TextStyle textButton = TextStyle(
    fontFamily: GlobalTypography.fontFamilyPrimary,
    fontSize: GlobalTypography.fontSizeMedium,
    fontWeight: GlobalTypography.fontWeightBold,
    color: AppColors.textPrimary
  );
}