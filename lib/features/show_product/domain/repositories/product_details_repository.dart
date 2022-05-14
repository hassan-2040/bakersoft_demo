import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/core/domain/use_cases/add_to_cart.dart';

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
