import 'package:bakersoft_demo/features/cart/domain/repositories/cart_repository.dart';

class GetTotalPrice {
  final CartRepository cartRepository;

  GetTotalPrice({
    required this.cartRepository,
  });

  double call() {
    return cartRepository.getTotalPrice();
  }
}
