

import 'package:bakersoft_demo/features/show_product/domain/repositories/product_details_repository.dart';

class ResetQuantity {
  final ProductDetailsRepository productDetailsRepository;

  ResetQuantity({required this.productDetailsRepository,});

  void call() {
    productDetailsRepository.resetQuantity();
  }
}