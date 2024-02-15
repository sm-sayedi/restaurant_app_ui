import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../core/app_colors.dart';
import '../models/food.dart';
import '../widgets/cart_button.dart';
import '../widgets/custom_chip.dart';
import '../widgets/tapping_list_view.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({
    super.key,
    required this.food,
  });

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Iconsax.arrow_left_outline),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            // This part should be scrollable
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Stack(
                children: [
                  Transform.translate(
                    offset: const Offset(60, -60),
                    // Lets add a cool animation to this image
                    child: Hero(
                      tag: food.image,
                      child: Image.asset(food.image),
                    ),
                  ),
                  // instead of Positioned we should use a Container
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    margin: const EdgeInsets.only(top: 350),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          food.amount,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                        Text(
                          food.name,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomChip(
                              label: '240 kc',
                              isFilled: false,
                            ),
                            CustomChip(
                              label: '10.3 pr',
                              isFilled: false,
                            ),
                            CustomChip(
                              label: '8.8 fats',
                              isFilled: false,
                            ),
                            CustomChip(
                              label: '28.7 cb',
                              isFilled: false,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Divider(
                          color: AppColors.grey.withOpacity(0.5),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'Spicy pepperoni, increased portion of mozzarella tomatoes s ecialt tomato sauce',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Text.rich(
                          TextSpan(
                            text: 'Tapping  ',
                            children: [
                              TextSpan(
                                text: '+\$1.00',
                                style: TextStyle(color: AppColors.primary),
                              ),
                            ],
                          ),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const TappingListView(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const CartButton(
            label: 'Add to Cart',
            total: 15.99,
          ),
        ],
      ),
    );
  }
}
