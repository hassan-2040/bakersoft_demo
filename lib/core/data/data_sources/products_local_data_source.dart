import 'dart:convert';

import 'package:flutter/services.dart';

class ProductsLocalDataSource {
  Future<List<dynamic>> getAllProducts(int _pageNo) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final String _response =
          await rootBundle.loadString('assets/questions.json');
      final Map<String, dynamic> _json = json.decode(_response);
      final List<dynamic> _products = _json['products']['page$_pageNo'];
      return _products;
    } catch (_) {
      rethrow;
    }
  }
}
