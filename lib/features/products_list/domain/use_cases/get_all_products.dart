

import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';
import 'package:bakersoft_demo/features/products_list/domain/repositories/products_repository.dart';

class GetAllProducts {
  final ProductsRepository productsRepository;

  GetAllProducts({
    required this.productsRepository,
  });

  Future<List<Product>> call(int _pageNo) async {
    try {
      return await productsRepository.getAllProducts(_pageNo);
    } catch (_) {
      rethrow;
    }
  }
}
