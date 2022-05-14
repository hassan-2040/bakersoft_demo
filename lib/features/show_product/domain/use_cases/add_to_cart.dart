import 'package:bakersoft_demo/core/domain/models/product.dart';
import 'package:bakersoft_demo/features/show_product/domain/repositories/product_details_repository.dart';
import 'package:bakersoft_demo/features/show_product/presentation/bloc/product_details_bloc.dart';

class AddToCart {
  final ProductDetailsRepository productDetailsRepository;

  AddToCart({ required this.productDetailsRepository,});

  void call(Product _product) {
    productDetailsRepository.addToCart(_product);
  }
}