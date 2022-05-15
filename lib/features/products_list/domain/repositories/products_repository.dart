import 'package:bakersoft_demo/features/products_list/data_sources/products_local_data_source.dart';
import 'package:bakersoft_demo/features/products_list/domain/models/product.dart';


class ProductsRepository {
  final ProductsLocalDataSource productsLocalDataSource;

  ProductsRepository({
    required this.productsLocalDataSource,
  });

  Future<List<Product>> getAllProducts(int _pageNo) async {
    try {
      final _list = await productsLocalDataSource.getAllProducts(_pageNo);
      return _list.map((e) => Product.fromJson(e)).toList();
    } catch (_) {
      rethrow;
    }
  }
}
