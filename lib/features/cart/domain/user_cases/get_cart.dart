import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';

class GetCart {
  final CartRepository cartRepository;

  GetCart({
    required this.cartRepository,
  });

  Future<Map<Product, int>> call() async {
    return await cartRepository.getCart();
  }
}