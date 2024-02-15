import 'package:flutter/material.dart';

import '../core/app_images.dart';
import '../models/category.dart';
import 'category_card.dart';

class TappingListView extends StatefulWidget {
  const TappingListView({
    super.key,
  });

  @override
  State<TappingListView> createState() => _TappingListViewState();
}

class _TappingListViewState extends State<TappingListView> {
  final List<Category> tappings = [
    Category(
      name: 'Mushrooms',
      image: AppImages.mushroom,
    ),
    Category(
      name: 'Tomatos',
      image: AppImages.tomato,
    ),
    Category(
      name: 'Paprika',
      image: AppImages.paprika,
    ),
  ];

  int groupIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        tappings.length,
        (index) => CategoryCard(
          category: tappings[index],
          groupIndex: groupIndex,
          index: index,
          onTapped: (newIndex) {
            setState(() {
              groupIndex = newIndex;
            });
          },
        ),
      ),
    );
  }
}
