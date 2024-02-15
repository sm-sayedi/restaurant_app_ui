import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../core/app_colors.dart';
import '../core/app_images.dart';
import '../widgets/cart_button.dart';
import '../widgets/categories.dart';
import '../widgets/custom_chip.dart';
import '../widgets/image_avatar.dart';
import '../widgets/outlined_icon_button.dart';
import '../widgets/pizza_list_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Clarity.map_marker_solid,
            color: AppColors.primary,
          ),
        ),
        title: const Text(
          'Boston, MA',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: false,
        forceMaterialTransparency: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.search_normal_1_outline),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Order again?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Hot Salami Pizza, Cole Slow, Pepsi',
                        style: TextStyle(color: AppColors.grey),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          SizedBox(
                            width: 120,
                            child: Stack(
                              children: [
                                const ImageAvatar(
                                    image: AppImages.pepperoniPizza),
                                const Positioned(
                                  left: 30,
                                  child: ImageAvatar(image: AppImages.salad),
                                ),
                                const Positioned(
                                  left: 60,
                                  child: ImageAvatar(image: AppImages.pepsi),
                                ),
                              ].reversed.toList(),
                            ),
                          ),
                          const CustomChip(label: '\$23.90'),
                          const Spacer(),
                          const OutlinedIconButton(),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Categories(),
                const SizedBox(height: 16),
                const Expanded(child: PizzaListView()),
              ],
            ),
          ),
          const CartButton(
            label: 'Go to Cart',
            total: 24.99,
            itemCount: 3,
          ),
        ],
      ),
    );
  }
}
