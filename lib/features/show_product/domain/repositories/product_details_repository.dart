import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetailsRepository {
  int _quantity = 1;

  int incrementQuantity() => ++_quantity;

  int decrementQuantity() {
    if (_quantity > 1) {
      return --_quantity;
    }
    return _quantity;
  }

  void addToCart(Product product) {
    //TODO add to cart with quantity
    debugPrint('Product added to cart');
  }
}
