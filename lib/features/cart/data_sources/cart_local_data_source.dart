import 'dart:convert';

import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartLocalDataSource {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> saveCartToLocalStrage(Map<Product, int> _cart) async {
    try {
      final _p = await _prefs;
      _p.setString('cart', json.encode(_cart));
    } catch (_) {
      rethrow;
    }
  }

  Future<Map<Product, int>> getCartFromLocalStrage() async {
    try {
      final _p = await _prefs;
    final _cart = _p.getString('cart');
    if (_cart != null) {
      return Map<Product, int>.from(json.decode(_cart));
    }
    return {};
    } catch (_) {
      rethrow;
    }
  }
}