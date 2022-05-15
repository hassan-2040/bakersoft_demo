import 'dart:convert';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavouriteProductsLocalDataSource {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> saveFavouriteProductsToLocalStrage(
    List<Product> _favouriteProducts,
  ) async {
    try {
      final _p = await _prefs;
      _p.setString(
          'favouriteProducts', json.encode(_toJson(_favouriteProducts)));
    } catch (_) {
      rethrow;
    }
  }

  Future<List<Product>> getFavouriteProductsFromLocalStrage() async {
    try {
      final _p = await _prefs;
      final _json = _p.getString('favouriteProducts');
      if (_json != null) {
        return _fromJson(json.decode(_json));
      }
      return [];
    } catch (_) {
      rethrow;
    }
  }

  List<dynamic> _toJson(List<Product> _favouriteProducts) {
    final _list = [];
    for (var _p in _favouriteProducts) {
      _list.add(_p.toJson());
    }
    return _list;
  }

  List<Product> _fromJson(List<dynamic> _json) {
    final List<Product> _list = [];
    for (var _p in _json) {
      _list.add(Product.fromJson(_p));
    }
    return _list;
  }
}
