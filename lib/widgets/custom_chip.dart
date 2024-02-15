import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.label,
    this.isFilled = true,
  });
  final String label;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: isFilled ? AppColors.primary : AppColors.white,
      labelStyle:
          TextStyle(color: isFilled ? AppColors.white : AppColors.black),
      side: BorderSide.none,
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 8,
      ),
    );
  }
}
