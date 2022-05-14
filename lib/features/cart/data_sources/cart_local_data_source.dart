import 'dart:convert';

import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartLocalDataSource {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> saveCartToLocalStrage(Map<Product, int> _cart) async {
    try {
      final _p = await _prefs;
      _p.setString('cart', json.encode(_toJson(_cart)));
    } catch (_) {
      rethrow;
    }
  }

  Future<Map<Product, int>> getCartFromLocalStrage() async {
    try {
      final _p = await _prefs;
      final _json = _p.getString('cart');
      if (_json != null) {
        return _fromJson(json.decode(_json));
      }
      return {};
    } catch (_) {
      rethrow;
    }
  }

  Future<void> clearCart() async {
    try {
      final _p = await _prefs;
      _p.remove('cart');
    } catch (_) {
      rethrow;
    }
  }

  Map<String, dynamic> _toJson(Map<Product, int> _cart) {
    final _list = [];
    _cart.forEach((key, value) {
      _list.add({
        'product': key.toJson(),
        'quantity': value,
      });
    });
    return {
      'cart': _list,
    };
  }

  Map<Product, int> _fromJson(Map<String, dynamic> _json) {
    final Map<Product, int> _map = {};
    _json['cart'].forEach((key) {
      _map[Product.fromJson(key['product'])] = key['quantity'] as int;
    });
    return _map;
  }
}
