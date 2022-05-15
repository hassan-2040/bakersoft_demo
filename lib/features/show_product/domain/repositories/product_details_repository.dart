
import 'package:bakersoft_demo/features/cart/domain/user_cases/add_to_cart.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';

class ProductDetailsRepository {
  final AddToCart addToCart;

  ProductDetailsRepository({
    required this.addToCart,
  });

  int _quantity = 1;

  int incrementQuantity() => ++_quantity;

  int decrementQuantity() {
    if (_quantity > 1) {
      return --_quantity;
    }
    return _quantity;
  }

  void resetQuantity() => _quantity = 1;

  void addProductToCart({
    required Product product,
    required int quantity,
  }) {
    addToCart(
      product: product,
      quantity: quantity,
    );
    _quantity = 1;
  }
}
