import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';

class AddToCart {
  final CartRepository cartRepository;

  AddToCart({
    required this.cartRepository,
  });

  void call({
    required Product product,
    required int quantity,
  }) {
    cartRepository.addToCart(
      product: product,
      quantity: quantity,
    );
  }
}
