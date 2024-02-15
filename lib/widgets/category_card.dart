import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
    required this.groupIndex,
    required this.index,
    required this.onTapped,
  });
  final Category category;
  final int groupIndex;
  final int index;
  final void Function(int) onTapped;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = index == groupIndex;
    // let's make this card tappable
    return GestureDetector(
      onTap: () {
        // this will update teh selected card
        onTapped.call(index);
      },
      child: Container(
        height: 104,
        width: 104,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.white,
          borderRadius: BorderRadius.circular(16),
          // Let's give that light shadow from design
          boxShadow: [
            BoxShadow(
              color: isSelected
                  ? AppColors.primary.withOpacity(0.5)
                  : AppColors.grey.withOpacity(0.5),
              blurRadius: 16,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 54,
              width: 54,
              child: Image.asset(category.image),
            ),
            const SizedBox(height: 8),
            Text(
              category.name,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: isSelected ? AppColors.white : AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
