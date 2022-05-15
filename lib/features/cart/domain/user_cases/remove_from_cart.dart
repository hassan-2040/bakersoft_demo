import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';

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
