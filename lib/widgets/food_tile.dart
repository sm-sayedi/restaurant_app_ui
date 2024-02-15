import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../models/food.dart';
import '../pages/food_page.dart';
import 'custom_chip.dart';
import 'outlined_icon_button.dart';

class FoodTile extends StatelessWidget {
  const FoodTile({
    super.key,
    required this.food,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => FoodPage(food: food)),
        );
      },
      // For the empy space to also be tappable add the following
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.4,
            height: MediaQuery.sizeOf(context).width * 0.4,
            child: Hero(
              tag: food.image,
              child: Image.asset(food.image),
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  food.amount,
                  style: const TextStyle(color: AppColors.grey),
                ),
                Row(
                  children: [
                    CustomChip(label: '\$${food.price}'),
                    const Spacer(),
                    const OutlinedIconButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
