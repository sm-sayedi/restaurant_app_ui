import 'package:flutter/material.dart';

import '../core/app_images.dart';
import '../models/category.dart';
import 'category_card.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<Category> categories = [
    Category(
      name: 'Pizza',
      image: AppImages.pizza,
    ),
    Category(
      name: 'Drinks',
      image: AppImages.icedCoffee,
    ),
    Category(
      name: 'Soups',
      image: AppImages.noodles,
    ),
    Category(
      name: 'Pizza',
      image: AppImages.pizza,
    ),
    Category(
      name: 'Drinks',
      image: AppImages.icedCoffee,
    ),
    Category(
      name: 'Soups',
      image: AppImages.noodles,
    ),
  ];

  // initially the first card is selected
  int groupIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        child: Row(
          children: List.generate(
            categories.length,
            (index) => Row(
              children: [
                CategoryCard(
                  category: categories[index],
                  groupIndex: groupIndex,
                  index: index,
                  onTapped: (newIndex) {
                    // update the newly selected card
                    setState(() {
                      groupIndex = newIndex;
                    });
                  },
                ),
                if (index < categories.length - 1) const SizedBox(width: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
