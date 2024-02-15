import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../core/app_colors.dart';

class OutlinedIconButton extends StatelessWidget {
  const OutlinedIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: () {},
      icon: const Icon(EvaIcons.plus),
      style: IconButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: const BorderSide(color: AppColors.primary),
        visualDensity: VisualDensity.compact,
        padding: const EdgeInsets.all(4),
      ),
    );
  }
}
