import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';

class LoadSavedCart {
  final CartRepository cartRepository;

  LoadSavedCart({
    required this.cartRepository,
  });

  Future<void> call() async {
    try {
      await cartRepository.loadSavedCart();
    } catch (_) {
      rethrow;
    }
  }
}
