import 'package:flutter/material.dart';
import 'package:taski_challenger_app/src/config/ds/tokens/alias/app_colors.dart';
import 'package:taski_challenger_app/src/config/ds/tokens/alias/app_opacity.dart';
import 'package:taski_challenger_app/src/config/ds/tokens/alias/app_radius.dart';
import 'package:taski_challenger_app/src/config/ds/tokens/alias/app_spacing.dart';
import 'package:taski_challenger_app/src/config/ds/tokens/alias/app_text_style.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Widget? icon;
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: onPressed,
        icon: icon,
        label: Text(
          label, 
          style: AppTextStyle.textButton.copyWith(
            color: AppColors.primary
          ),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.primary.withAlpha(AppOpacity.medium),
          shape: RoundedRectangleBorder(
            borderRadius: AppRadius.all.medium,
          ),
          side: BorderSide.none,
          padding: AppSpacing.vertical.sm + AppSpacing.horizontal.md
        ),
    );
  }
}
