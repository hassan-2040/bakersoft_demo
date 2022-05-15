import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';

class GetCartItemsCount {
  final CartRepository cartRepository;

  GetCartItemsCount({
    required this.cartRepository,
  });

  int call() {
    return cartRepository.getCartItemsCount;
  }
}
