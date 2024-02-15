import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
    required this.label,
    required this.total,
    this.itemCount,
  });

  final String label;
  final double total;
  final int? itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        border: Border(
          top: BorderSide(
            color: AppColors.grey.withOpacity(0.5),
          ),
        ),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$$total',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              if (itemCount != null)
                Text(
                  '$itemCount items',
                  style: const TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                child: Text(label),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
