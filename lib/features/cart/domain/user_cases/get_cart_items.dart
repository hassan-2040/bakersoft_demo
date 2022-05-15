import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';

class GetCartItems {
  final CartRepository cartRepository;

  GetCartItems({
    required this.cartRepository,
  });

  Future<Map<Product, int>> call() async {
    return await cartRepository.getCartItems();
  }
}