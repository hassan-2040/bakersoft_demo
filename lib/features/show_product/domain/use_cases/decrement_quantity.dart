import 'package:bakersoft_demo/features/show_product/domain/repositories/product_details_repository.dart';
import 'package:flutter/material.dart';

class DecrementQuantity {
  final ProductDetailsRepository productDetailsRepository;

  DecrementQuantity({ required this.productDetailsRepository,});

  int call() {
    return productDetailsRepository.decrementQuantity();
  }

}