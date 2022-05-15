import 'package:bakersoft_demo/features/cart/data_sources/cart_local_data_source.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';

class CartRepository {
  final CartLocalDataSource cartLocalDataSource;

  CartRepository({
    required this.cartLocalDataSource,
  }); // constructor

  Map<Product, int> _cartItems = {};

  Map<Product, int> get getCartItems => _cartItems;
  int get getCartItemsCount => _cartItems.length;
  
  double get getTotalPrice {
    double _tempPrice = 0;
    _cartItems.forEach((key, value) {
      _tempPrice += key.price * value;
    });
    return _tempPrice;
  }

  void addToCart({
    required Product product,
    required int quantity,
  }) async {
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
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
  }

  void clearCart() {
    _cartItems.clear();
  }

  Future<void> loadSavedCart() async {
    try {
      _cartItems = await cartLocalDataSource.getCartFromLocalStrage();
    } catch (_) {
      rethrow;
    }
  }

  Future<void> saveCart() async {
    try {
      await cartLocalDataSource.saveCartToLocalStrage(_cartItems);
    } catch (_) {
      rethrow;
    }
  }
}
