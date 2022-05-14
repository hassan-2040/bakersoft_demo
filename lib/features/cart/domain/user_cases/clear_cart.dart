import 'package:bakersoft_demo/core/domain/repositories/cart_repository.dart';

class ClearCart {
  final CartRepository cartRepository;

  ClearCart({ required this.cartRepository,});

  void call() {
    cartRepository.clearCart();
  }
}