import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../models/product_model.dart';
import '../widgets/cart_total_bottom_bar.dart';
import '../widgets/product_item_widget.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  static const List<ProductModel> products = [
    ProductModel(name: 'Apple', emoji: '🍎', price: 10),
    ProductModel(name: 'Banana', emoji: '🍌', price: 5),
    ProductModel(name: 'Orange', emoji: '🍊', price: 8),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.shopping_cart, color: Colors.white),
            SizedBox(width: 10),
            Text('Shopping Cart', style: TextStyle(color: Colors.white)),
          ],
        ),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ...products.map(
              (product) => Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: ProductItemWidget(product: product),
              ),
            ),
            const Spacer(),
            const CartTotalBottomBar(),
          ],
        ),
      ),
    );
  }
}
