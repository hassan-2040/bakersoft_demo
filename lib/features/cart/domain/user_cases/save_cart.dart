import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';

class SaveCart {
  final CartRepository cartRepository;

  SaveCart({ required this.cartRepository,});

  Future<void> call() async {
    try {
      await cartRepository.saveCart();
    } catch (_) {
      rethrow;
    }
  }
}