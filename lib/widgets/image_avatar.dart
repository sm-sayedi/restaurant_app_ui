import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.grey.withOpacity(0.5)),
        shape: BoxShape.circle,
      ),
      child: Image.asset(image),
    );
  }
}
