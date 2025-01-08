import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taski_challenger_app/src/core/ds/tokens/alias/app_colors.dart';
import 'package:taski_challenger_app/src/core/ds/tokens/alias/app_opacity.dart';
import 'package:taski_challenger_app/src/core/ds/tokens/alias/app_radius.dart';
import 'package:taski_challenger_app/src/core/ds/tokens/alias/app_spacing.dart';
import 'package:taski_challenger_app/src/generated/assets.gen.dart';

class AppInputSearch extends StatelessWidget {
  final String? placeholder;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const AppInputSearch({
    super.key,
    this.placeholder,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: placeholder,
        prefixIcon: Icon(
          Icons.search,
          color: AppColors.primary,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.cancel,
            color: AppColors.secondary,
          ),
          onPressed: () {
            controller.clear();
            onChanged;
          },
        ),
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: AppRadius.all.medium,
          borderSide: BorderSide(
            color: AppColors.primary.withAlpha(AppOpacity.hight),
            width: 2.0
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadius.all.medium,
          borderSide: BorderSide(
            color: AppColors.primary.withAlpha(AppOpacity.hight),
            width: 2.0
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadius.all.medium,
          borderSide: BorderSide(
            color: AppColors.primary.withAlpha(AppOpacity.hight),
            width: 2.0
          ),
        ),
      ),
    );
  }
}