import 'package:bakersoft_demo/features/show_product/domain/repositories/product_details_repository.dart';

class IncrementQuantity {
  final ProductDetailsRepository productDetailsRepository;

  IncrementQuantity({
    required this.productDetailsRepository,
  });

  int call() {
    return productDetailsRepository.incrementQuantity();
  }
}
