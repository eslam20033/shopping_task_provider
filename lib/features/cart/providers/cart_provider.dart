import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  double _totalPrice = 0.0;

  double get totalPrice => _totalPrice;

  void addToTotal(double price) {
    _totalPrice += price;
    notifyListeners();
  }
}
