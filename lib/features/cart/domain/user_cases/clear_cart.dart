import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';

class ClearCart {
  final CartRepository cartRepository;

  ClearCart({
    required this.cartRepository,
  });

  Future<void> call() async {
    try {
      await cartRepository.clearCart();
    } catch (_e) {
      rethrow;
    }
  }
}
