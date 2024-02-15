import 'package:flutter/material.dart';

import '../core/app_images.dart';
import '../models/food.dart';
import 'food_tile.dart';

class PizzaListView extends StatefulWidget {
  const PizzaListView({
    super.key,
  });

  @override
  State<PizzaListView> createState() => _PizzaListViewState();
}

class _PizzaListViewState extends State<PizzaListView> {
  final List<Food> pizzas = [
    Food(
      name: 'Mushroom Pizza',
      image: AppImages.mushroomPizza,
      amount: '410g',
      price: 14.99,
    ),
    Food(
      name: 'Pepperoni Pizza',
      image: AppImages.pepperoniPizza,
      amount: '320g',
      price: 15.99,
    ),
    Food(
      name: 'Cheese Pizza',
      image: AppImages.cheesePizza,
      amount: '410g',
      price: 17.99,
    ),
    Food(
      name: 'Margherita Pizza',
      image: AppImages.margheritaPizza,
      amount: '50g',
      price: 19.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: pizzas.length,
      itemBuilder: (_, index) => FoodTile(food: pizzas[index]),
      separatorBuilder: (_, index) => const SizedBox(height: 16),
    );
  }
}
