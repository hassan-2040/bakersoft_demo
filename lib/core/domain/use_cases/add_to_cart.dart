import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/core/domain/repositories/cart_repository.dart';

class AddToCart {
  final CartRepository cartRepository;

  AddToCart({
    required this.cartRepository,
  });

  Future<Map<Product, int>> call({
    required Product product,
    required int quantity,
  }) async {
    try {
      return await cartRepository.addToCart(
        product: product,
        quantity: quantity,
      );
    } catch (_) {
      rethrow;
    }
  }
}
