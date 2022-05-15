import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';

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
