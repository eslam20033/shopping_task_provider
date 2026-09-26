import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/theme/app_colors.dart';
import '../providers/cart_provider.dart';

class CartTotalBottomBar extends StatelessWidget {
  const CartTotalBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.bottomBarBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.shopping_cart_outlined,
            color: AppColors.darkText,
            size: 28,
          ),
          const SizedBox(width: 12),
          Consumer<CartProvider>(
            builder: (context, cartProvider, child) {
              return Text(
                'Total: ${cartProvider.totalPrice.toInt()} EGP',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkText,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
