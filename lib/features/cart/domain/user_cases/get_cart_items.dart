import 'package:bakersoft_demo/core/common_product_features/domain/models/product.dart';
import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';

class GetCartItems {
  final CartRepository cartRepository;

  GetCartItems({
    required this.cartRepository,
  });

  Future<Map<Product, int>> call() async {
    return await cartRepository.getCartItems();
  }
}