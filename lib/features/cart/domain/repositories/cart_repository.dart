import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/features/cart/data_sources/cart_local_data_source.dart';

class CartRepository {
  final CartLocalDataSource localDataSource;

  CartRepository({
    required this.localDataSource,
  }); // constructor

  Map<Product, int> _cartItems = {};
  double _totalPrice = 0;

  Future<Map<Product, int>> addToCart({
    required Product product,
    required int quantity,
  }) async {
    try {
      if (_cartItems.containsKey(product)) {
        final _previousQuantity = _cartItems[product];
        if (_previousQuantity == null) {
          _cartItems[product] = quantity;
        } else {
          _cartItems[product] = _previousQuantity + quantity;
        }
      } else {
        _cartItems[product] = quantity;
      }
      _updatePrice();
      await localDataSource.saveCartToLocalStrage(_cartItems);
      return _cartItems;
    } catch (_) {
      rethrow;
    }
  }

  //since there is no remote data source, we will just return the local data
  Future<Map<Product, int>> getCart() async {
    try {
      if (_cartItems.isEmpty) {
        _cartItems = await localDataSource.getCartFromLocalStrage();
      }
      _updatePrice();
      return _cartItems;
    } catch (_) {
      rethrow;
    }
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
  }

  void clearCart() {
    _cartItems.clear();
    _totalPrice = 0;
  }

  double getTotalPrice() {
    return _totalPrice;
  }

  void _updatePrice() {
    _totalPrice = 0;
    _cartItems.forEach((key, value) {
      _totalPrice += key.price * value;
    });
  }
}
