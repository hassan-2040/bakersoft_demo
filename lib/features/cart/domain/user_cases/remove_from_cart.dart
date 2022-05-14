import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';

class RemoveFromCart {
  final CartRepository cartRepository;

  RemoveFromCart({
    required this.cartRepository,
  });

  void call(
    Product product,
  ) async {
    cartRepository.removeFromCart(
      product,
    );
  }
}
